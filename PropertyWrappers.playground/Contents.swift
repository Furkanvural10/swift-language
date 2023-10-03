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



