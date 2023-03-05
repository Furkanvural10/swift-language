import UIKit

/* ************* OPTIONALS ***********
 
 Defining something and initializing it are two different things.
 
 Initializing example
 --- var userName: String
 
 Defining example
 --- var userName: String = "John
 
 Make a Optional. Maybe it has value, maybe it doesn't.
 -- var userName: String?
 
 
 Example:
 
 var userName: String?
 userName.uppercased() --> output: error
 
     ******* The correct one is below *******
 */

/* Question Mark
 
 if ı put the question mark (?), maybe it has a value, maybe not, if it exists, give the value, otherwise, give us nil value.
*/

var userName: String?
userName?.uppercased() // output: nill


/* Exclamation mark
 
 Putting a question mark means I'm 100 percent sure, this variable has a value,
 **If the variable has no value, the program will throw an error. BE CAREFUL!!
*/

var userSurname: String?
// userSurname!.uppercased()

// What should we do to avoid such dilemmas??? --> default value, if let

// I want to multiply the user's age by 5.
// Since every value entered by the user is "String", I need to convert that value to Int first, and then multiply it.

// Default Value
var age = "5"
// var userAge = (Int(age) ?? <#default value#>) * 10
var userAge = (Int(age) ?? 3) * 10
// Default Value says that If I can't convert it to int, tell me a value and I'll multiply it by it.

var age1 = "kamds23"
var userAge1 = (Int(age) ?? 0) * 10 // output: 10x0 = 0
// Default value: 10


// If-let
var bestBook: String?

// The "if let" is one of the best ways to check if a variable has a value or not.
if let bookName = bestBook {
    print(bookName)
    // if "bookName" variable has a value, go :)
}else{
    print("Wrong input")
    // Show the user error message
}


/* ********* Guard Let *********
 
 We can think of it as the opposite of if let. We deal with "Guard" mostly in negative situations.
 
*/

var userEmail = "xyz@gmail.com"

func getUserInfo(userEmail: String?){
    
    guard let mail = userEmail else {
        // If the variable is nil this will work.
        print("userEmail is nil, nothing happen")
        return
    }
    
    // Unwapping because userEmail is not nil.
    print("Welcome: \(mail)")
    
}

getUserInfo(userEmail: nil)
getUserInfo(userEmail: "xyz@gmail.com")









