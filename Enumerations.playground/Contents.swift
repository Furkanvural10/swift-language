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
