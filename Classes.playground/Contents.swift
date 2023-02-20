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



// ******* Initialization *******

class Teams {
    
    
    var teamName: String = "Real Madrid"
    var playerName: String = "Kross"
    var jerseyNumber: Int = 8
     
    // Initializer or Constructor
    init() {
        // It is called a special function where we specify what to do when the class is created.
        // When an object of this class is created, it will run first.
        print("An object has been created from the Teams class.")
        
    }
    
}

var team1 = Teams()
print(team1.teamName)
// What you will see when you look at the logs:
// 1- An object has been created from the Teams class.
// 2- Real Madrid

var team2 = Teams()
// Check the logs :)


class Books {
    
    // Properties
    var name: String
    var price: Int // $
    var writer: String
    var completed: Bool
    
    // When creating an object from the class, I want to give the value of the variables. This is how we do it.
    init(name: String, price: Int, writer: String, completed: Bool) {
        // self refer to properties
        self.name = name
        self.price = price
        self.writer = writer
        self.completed = completed
    }
}


var book1 = Books(name: "100 Days", price: 12, writer: "Joe Luret", completed: false)


// Class with enum feature

enum Platform {
    case instagram
    case twitter
    case linkedin
    case youtube
}

class SocialMedia {
    
    var accountName: String
    var following: Int
    var followers: Int
    var platform: Platform
    
    init(accountName: String, following: Int, followers: Int, platform: Platform) {
        self.accountName = accountName
        self.following = following
        self.followers = followers
        self.platform = platform
    }
    
}

var userAccount = SocialMedia(accountName: "iosDev", following: 100, followers: 4953, platform: .instagram)


