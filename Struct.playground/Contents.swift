import UIKit

/* ************ STRUCT *************
 
 We use "struct" key-word
 
 We can say that it is almost the same thing with classes, but we can say that it differs from classes with some differences.
 
                    Class     ------    Struct
                    ----------------------------
            1   Inheritance           No Inheritance
            2   Reference Type        Value Type
            3   Heap                  Stack
            4   First In First Out    First In Last Out
            5         -               Faster
            6         -               Simpler
            7         -               Immutable
 
 */

class Car1 {
    
    var carName: String
    var carPriece: Int
    var carColor: UIColor
    
    // We must write the init function
    init(carName: String, carPriece: Int, carColor: UIColor) {
        self.carName = carName
        self.carPriece = carPriece
        self.carColor = carColor
    }
}

let mercedes = Car1(carName: "Mercedes c63", carPriece: 100_000, carColor: .white)


// Struct
struct Car2 {
    
    var carName: String
    var carPriece: Int
    var carColor: UIColor
    
    // We don't need to write init function. This is called as "Free Initializer"
}

let bmw = Car2(carName: "bmw m4", carPriece: 70_000, carColor: .purple)



// Mutating Functions

class User {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func celebrateBirthday(){
        age += 1
        // You can show the celebration message
    }
    
}

var henderson = User(name: "Henderson", age: 30)
print(henderson.age)
// Output: 30

henderson.celebrateBirthday()
print(henderson.age)
// Output: 31.


// We use the mutating function in struct.

struct Person {
    var name: String
    var age: Int
    
    func celebrateBirthday(){
        
        /* age += 1
         Give us error: Left side of mutating operator isn't mutable: 'self' is immutable.
         If you want to increase age variable we must use "mutating" key word.
         */
    }
    
    mutating func celebBirthday(){
        age += 1
    }
}

var thomas = Person(name: "Thomas", age: 29)
print(thomas.age)
// Output: 29.

thomas.celebBirthday()
print(thomas.age)
// Output: 30.


