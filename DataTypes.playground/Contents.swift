import UIKit

// This sign (//) represents comment-line. While code run, comment-line does no run.

/*
 If you want to use multiple comment line you must use (/* your comment */)
 Comments-line helps us to understanding and reading easily code
 */


// Variable and Constant

// Variable - using "var" keyword
var userName = "Joe"
var userSurname = "Burry"

// Constant - using "let" keyword.

let piNumber = 3.14
let userID = "osdkf92if92jkfds01md9"

// ** Important note: The difference between Variable and Constant is that variable's value can be changed later, but constant can not. Example below

userName = "Eric" // Previously userName equals to "Joe"
userSurname = "Keept" // Previously userSurname equals to "Burry"

// You can define multiple related variables of the same type on a single line
var numberOne = 1, numberTwo = 2, numberThree = 3, numberFour = 4


/*
 
 Data Types
 1 - String
 2 - Integer (Briefly, we show "int")
 3 - Double
 4 - Boolean (Briefly, we show "bool")
 
*/

// String --> Any data enclosed in double quotes is considered a String.
let bookName = "The Lord of the Rings"
let numberOfBookPage = "456" // Yes, it is a string, because data is enclosed in double quotes.

// Integer --> Expresses negative or positive integer.
var userAge = 25
var userWeight = 79

// Double -->  Negative or positive decimal numbers double.
let pi = 3.14
let negativeDoubleNumber = -123.5

// Boolean --> True or false. When naming Boolean variables, we usually define it as isXX.
var isUserActive = true
var isColorPurple = false
 
// Type Annotations
var numberOfStudents: Int = 100 // ": Int" this expression means that numberOfStudents variable's type must be Integer(Int)

// Single Line multiple variable with type annotations
var isLogin, isLogout, isTapped, isFemale: Bool

// Type-safety in Swift

var greaterThanPoints = 100
// -> greaterThanPoints = "200" It is error compile time because variable define as a Int and value can be change, but we don't change type, only value. Like below
greaterThanPoints = 101


