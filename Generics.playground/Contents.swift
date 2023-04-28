import UIKit

// MARK: - Generic

// T means that Generic sign. T can be int, string, bool or any class, struct etc.

func getMyCustomValue<T>(value: T) -> T {
    return value
}

getMyCustomValue(value: 12)
getMyCustomValue(value: "John")
getMyCustomValue(value: true)

struct Person {
    var name: String
}

let person1 = Person(name: "Patric")
getMyCustomValue(value: person1)
