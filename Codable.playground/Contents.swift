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

// MARK: - Decode with decodingSt

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
