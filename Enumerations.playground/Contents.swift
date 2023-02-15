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
    case classics // has not associated values. It's not mandatory.
    case horror (pages: Int)
    case mirror (writers: String)
    case crime (price: Double)
}

let book1 = Book.classics
let book2 = Book.horror(pages: 743)
let book3 = Book.mirror(writers: "Leo Huer")
let book4 = Book.crime(price: 45.3) // $


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









