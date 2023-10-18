import UIKit


let json =
"""
    {
        "firstName": "Furkan",
        "lastName": "Vural",
    }
""".data(using: .utf8)!

struct Person: Encodable {
    let firstName: String
    let lastName: String
}

let person = Person(firstName: "Furkan", lastName: "Vural")

do {
    var result = try JSONEncoder().encode(person)
    print(result)
} catch {
    print(error.localizedDescription)
}
