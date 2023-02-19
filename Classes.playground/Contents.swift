import UIKit

/* ************* CLASSES *************
 
 Classes can contain variables, functions, etc. a structure that holds them all together.
 We actually build everything around classes.
 It is one of the most important concepts of OOP (Object Oriented Programming)
 
 we use "class" keyword. Class name must start with a capital letter.
 
 */

class Cars {
    
    // Class has properties
    var carName: String = "Mercedes"
    var price: Int = 100_000
    var modelName: String = "C63-Amg"
    
    // Class has functions
    
    func buyCard(){
        // Check the user's bank account information.
    }
    
    func addConfiguration() {
        // Add leather seats, park assist.
    }
    
}

// We can create objects from classes.
var myCar = Cars()

// We can access properties of classes.
myCar.carName = "BMW"
myCar.price = 50_000
myCar.modelName = "5.20i"

// We can access functions of classes.
myCar.buyCard()
myCar.addConfiguration()


