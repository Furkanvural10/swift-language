import UIKit

// MARK: - Functions

/*
 Functions let us re-use code, which means we can write a function to do something interesting then run that function from lots of places. Repeating code is generally a bad idea, and functions help us avoid doing that.
 
 we use "func" keyword, then we give the name to function. Function name should always be verb, because function is something do that.
 
 */

// Creating function with "func" keyword
func printName() {
    print("John")
}

// Calling function
printName()
// output: "John"


// MARK: - Functions with parameters

/*
 You can send values to a function that can then be used inside the function to change the way it behaves.
*/

func printGivenName(name: String) {
    print("Giving name: \(name)")
}

printGivenName(name: "Patrick")
// Output: "Giving name Patrick"


// MARK: - Returning Values

/*
 Sometimes we can tell functions to return a value to us. We can configure the type of value it will return according to our desire.
 
 return sign: -> Int,String,Float,Double,Bool (According to my will)
 
*/

func returnMyNumber(number: Int) -> Int {
    return number
}

func returnTruOrFalse(value: Bool) -> Bool {
    return value
}

func returnUserName(name: String) -> String {
    return name
}

let myNumber = returnMyNumber(number: 10)
// myNumber variable is equal to 10 because returnMyNumber function will return the given number

let myBoolean = returnTruOrFalse(value: true)
// myBoolean variable is "true" because returnTruOrFalse function will return the given boolean value

let userName = returnUserName(name: "Beck")
// userName variable is "Beck"  because returnUserName function will return the given string

// MARK: - Multiple Returning Value
func sumAndMultipleTwoNumber(number1: Int, number2: Int) -> (Int, Int){
    let sumResult = number1 + number2
    let multipleResult = number1 * number2
    return (sumResult, multipleResult)
}
sumAndMultipleTwoNumber(number1: 5, number2: 5)

// MARK: - Argument Label and Call Site

func getUser(name userName: String){
//           name -> Parameter Label
//                userName --> ArgumentLabel

    print("Username is: \(userName)")
}

getUser(name: "Jony")
//      name --> Call site

// MARK: - Omitting parameter labels

// We are using the underscore (_)

func sumTwoNumber(_ firstNumber:Int, _ secondNumber: Int) -> Int{
    return firstNumber+secondNumber
}

sumTwoNumber(10, 20)


// MARK: - Default Parameters
func checkLogin(name: String, age: Int, available: Bool = false ){
    // available is assigning a default parameter as a false.
    
    if available {
        print("Welcome \(name)")
    }else{
        print("Error")
    }
}

checkLogin(name: "Petrick", age: 21, available: true) // output: Welcome Petrick
checkLogin(name: "Lucas", age: 29) // output: Error


// MARK: - Variadic Functions
/*
 writing ... after type
*/

func giveUsToArray(number: Int...) -> [Int] {
    
    var newArray = [Int]()
    for i in number {
        newArray.append(i)
    }
    return newArray
}

var result = giveUsToArray(number: 1,2,3,4,5,6,7,8,9,10)
print(result)
// output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// MARK: - Throwing functions
// We are using "throws" keyword
// If the function throws the error, we must do that in "do try catch"

enum LoginError: Error {
    case passwordSimple
    case passwordTooShort
    case nameError
}

func checkLoginInfo(_ name: String, _ password: String) throws -> Bool {
    
    if  password.count < 4 {
        throw LoginError.passwordTooShort
    }
    return true
}

do {
    let result = try checkLoginInfo("John", "3")
} catch{
    print("Catch error")
}

// MARK: - Inout parameters

/*
 All parameters in the functions are constant. You can not change them.
 If you want to change you can use the inout parameters

 */

func findFact(number: inout Int) -> Int {
    
    for i in 1..<number{
        number *= i
    }
    return number
}
var number = 5
findFact(number: &number) // output: 120

// MARK: - Using Function Types

func checkPassword(password: String) -> Bool {
    if password == "123456" {
        print("Password is too easy")
        return false
    }
    print("Password is strong")
    return true
}

// checkPassword("1234") -> This function type (String) -> Bool
let checkPasswordResult: (String) -> Bool = checkPassword
checkPasswordResult("123456")















