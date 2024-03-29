import UIKit


struct Person: Encodable {
    let firstName: String
    let lastName: String
}

// MARK: - Encode Example
let person = Person(firstName: "Furkan", lastName: "Vural")

do {
    var result = try JSONEncoder().encode(person)
    print(result)
} catch {
    print(error.localizedDescription)
}

// MARK: - Decode Example

let json =
"""
    {
        "firstName": "Furkan",
        "lastName": "Vural",
    }
""".data(using: .utf8)!

struct Person2: Decodable {
    let firstName: String
    let lastName: String
}

do {
    let person = try JSONDecoder().decode(Person2.self, from: json)
    print(person)
} catch {
    print(error.localizedDescription)
}

// MARK: - Decode with keyDecodingStrategy

let snake_case_json = """
    {
        "first_name": "Furkan",
        "last_name": "Vural",
    }
""".data(using: .utf8)!

let jsonDecoder = JSONDecoder()
jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase

do {
    let person = try jsonDecoder.decode(Person2.self, from: snake_case_json)
    print(person)
} catch {
    print(error.localizedDescription)
}

// MARK: - (CodingKeys)

let snake_case_json2 = """
    {
        "first_name": "Furkan",
        "last_name": "Vural",
        "birth_of_date": "26.01.2023"
    }
""".data(using: .utf8)!

struct Person3: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case name = "first_name"
        case surname = "last_name"
        case birthDate = "birth_of_date"
    }
    
    let name: String
    let surname: String
    let birthDate: String
}

do {
    let person = try JSONDecoder().decode(Person3.self, from: snake_case_json2)
    print(person)
} catch {
    print(error.localizedDescription)
}

// MARK: - Date Decoding Strategy

struct Person4: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case name = "first_name"
        case surname = "last_name"
        case birthDate = "birth_of_date"
    }
    
    let name: String
    let surname: String
    let birthDate: Date
}

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.MM.yyyy"
let jsonDecoder2 = JSONDecoder()
jsonDecoder2.dateDecodingStrategy = .formatted(dateFormatter)

do {
    let person = try jsonDecoder2.decode(Person4.self, from: snake_case_json2)
    print(person)
} catch {
    print(error.localizedDescription)
}

// MARK: - Json Include Array Object

let snake_case_json3 = """
[
    {
        "name": "Furkan",
        "surname": "Vural"
    },
    {
        "name": "Mehmet",
        "surname": "Kale"
    },
    {
        "name": "Osman",
        "surname": "Öğe"
    },
]
""".data(using: .utf8)!

struct Person5: Decodable {
    let name: String
    let surname: String
}

do {
    let person = try JSONDecoder().decode([Person5].self, from: snake_case_json3)
    print(person)
} catch {
    print(error.localizedDescription)
}


// MARK: - JSON includes Nested Object

let snake_case_json4 = """
    {
        "name": "Furkan",
        "surname": "Vural",
        "address": {
            "city": "Istanbul",
            "country": "Turkey"
        }
    }
""".data(using: .utf8)!

struct Address: Decodable {
    let city: String
    let country: String
}

struct Person6: Decodable {
    
    let name: String
    let surname: String
    let address: Address
 
}

do {
    let person = try JSONDecoder().decode(Person6.self, from: snake_case_json4)
    print(person)
} catch {
    print(error.localizedDescription)
}

// MARK: - Custom Decoding

let snake_case_json5 = """
    {
        "name": "Furkan",
        "surname": "Vural",
        "address": {
            "city": "Istanbul",
            "country": "Turkey"
        }
    }
""".data(using: .utf8)!


struct Person7: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case name
        case surname
        case address
    }
    
    enum AddressCodingKeys: String, CodingKey {
        case city
        case country
    }
    
    let name: String
    let surname: String
    let address: String
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.surname = try container.decode(String.self, forKey: .surname)
        
        let addressContainer = try container.nestedContainer(keyedBy: AddressCodingKeys.self, forKey: CodingKeys.address)
        
        let city = try addressContainer.decode(String.self, forKey: .city)
        let country = try addressContainer.decode(String.self, forKey: .country)
        
        self.address = "\(city) \(country)"
    }
 
}

do {
    let person = try JSONDecoder().decode(Person7.self, from: snake_case_json4)
    print(person)
} catch {
    print(error.localizedDescription)
}
