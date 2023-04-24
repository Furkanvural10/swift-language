import UIKit

// MARK: - Extension

// The main purpose of extensions is to change classes that we cannot access.

// Create your own custom print function

extension String {
    func makeCustomPrint(){
        print(self)
    }
}

"Print this custom string".makeCustomPrint()

// MARK: - Rules
// 1- You don't add stored properties to Extensions like --> var age: Int
// 2- You can add any functions that you want

// MARK: - Extend your own Class or Struct

struct User {
    var name: String
    var age: Int
}

extension User {
    func printUserInfo(){
        print("Name: \(name), age: \(age)")
    }
}

// Create Instance from User struct
var john = User(name: "John", age: 24)
john.printUserInfo()
// output: Name: John, age: 24




