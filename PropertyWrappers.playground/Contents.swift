import UIKit
import Foundation

// MARK: - Property Wrappers

@propertyWrapper
struct Uppercased {
    
    private var value: String
    
    var wrappedValue: String {
        get {
            value.localizedUppercase
        }
        set {
            value.localizedUppercase
        }
    }
    
    init(wrappedValue: String) {
        self.value = wrappedValue
    }
    
    
}

struct User {
    
    @Uppercased
    var name: String
}

var firstUser = User(name: "john")
print(firstUser.name)


@propertyWrapper
struct DateFormat {
    
    private var value: Double = 0
    
    var wrappedValue: String {
        get {
            String(format: "%.2f", value)
        }
        set {
            value = Double(newValue) ?? 0
        }
    }
}

struct Product {
    @DateFormat var price: String
}

var prod1 = Product()
prod1.price = "123.345"
print(prod1.price)
