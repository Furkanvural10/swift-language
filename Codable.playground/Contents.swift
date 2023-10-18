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
