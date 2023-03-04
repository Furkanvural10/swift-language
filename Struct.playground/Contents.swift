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
