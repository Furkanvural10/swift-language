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

// MARK: - Custom Decoding (CodingKeys)

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
