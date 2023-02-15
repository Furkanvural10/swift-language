import UIKit

/* **************  Enumerations  **************
 
 - Usually called "enum"
 - Enums are a way of defining groups of related values in a way that makes them easier to use.
 - We use "enum" with key-word.
 
*/

enum Result {
    case failure
    case success
}

func getUserData(name: String, age:Int) -> Result {
    // The function return Result case depends on condition
    
    if name.count > 2 && age > 20 {
        return Result.success
        // If condition is true, return success from "Result" enum.
    }else{
        return Result.failure
        // If condition is false, return failure from "Result" enum.
    }
}

// Enum Associated Values

enum Book {
    case classics // you don't have to have associated values for every single cases enum
    case horror (pages: Int)
    case mirror (writers: String)
    case crime (price: Double)
}

let book1 = Book.classics
let book2 = Book.horror(pages: 743)
let book3 = Book.mirror(writers: "Leo Huer")
let book4 = Book.crime(price: 45.3) // $

// Intermediate Example!!
enum Activity {
    case ps5(gameName: String)
    case running(place: String)
    case reading(bookPage: Int)
}

func doActivity(activity: Activity){
    
    switch activity {
        
    case .ps5(let gameName) where gameName == "FIFA23":
        print("Good Luck :)")
        
    case .running(let place) where place == "Beach":
        print("Best place :)")
        
    case .reading(let bookPage) where bookPage > 400:
        print("Seems like it will take a long time.")
        
    case .reading, .ps5, .running: // Like a default case
        print("Nice activity")
        
    }
    
}
    
doActivity(activity: .running(place: "Beach")) // Output: Best place :)
doActivity(activity: .reading(bookPage: 500)) // Output: Seems like it will take a long time.
doActivity(activity: .ps5(gameName: "God of War")) // Output: Nice activity



/* Enum Raw Value
 - We can assign values to enums.
*/

//Swift will automatically assign each of those a number starting from 0.
enum Language: Int {
    case English // 0
    case Spanish // 1
    case Turkish // 2
    case Arabic // 3
}

let language = Language(rawValue: 2) // asign raw value 2 --> Turkish

// If you want, you can assign one or more cases a specific value

enum Team: Int {
    case barcelona = 1
    case inter = 3
    case ajax = 2
    case fenerbahce = 4
}

let leaderTeam = Team(rawValue: 1)
let secondTeam = Team(rawValue: 2)

if let leaderTeam = Team(rawValue: 1){
    print(leaderTeam) // output: barcelona
}

if let secondTeam = Team(rawValue: 2) {
    print(secondTeam) // output: ajax
}

enum SocialMedia {
    case twitter
    case facebook
    case instagram
    case linkedin
}


func sharePhoto(on platfrom: SocialMedia){
    switch platfrom {
    case .twitter:
        print("Share photo on twitter")
    case .facebook:
        print("Share photo on facebook")
    case .instagram:
        print("Share photo on instagram")
    case .linkedin:
        print("Share photo on linkedin")
    }
}

sharePhoto(on: .facebook)


/* ************** SWITCH STATEMENT **************

Switch provides us with a code that is similar to the if else structure, but more understandable and readable.
 
*/

let weather = "Sunny"

switch weather {
    
case "Sunny":
    print("Don't forget your sunglasses")

case "Snowy":
    print("Be careful! Don't forget to wear your coat.")
    
case "Rainy":
    print("A colorful umbrella suits you very well.")
    
default:
    print("Weather seems uncertain.")
    // default: is required because Swift makes sure you cover all possible cases so that no eventuality is missed off.
}

// If you want execution to continue on to the next case, use the "fallthrough" keyword

enum CarBrand {
    case mercedes
    case fiat
    case bmw
}

let car1: CarBrand = .bmw

switch car1 {
case .bmw:
    print("Your car is awesome!!")
    fallthrough
    
case .fiat:
    // This case always run, becauseyou used "falltrough" in the example above.
    print("Your car is cheapter than others")
    
case .mercedes:
    print("Your car is very stylish.")

}







 












