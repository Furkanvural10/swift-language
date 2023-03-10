import UIKit

/*  ************ Functions ************
 
 Functions let us re-use code, which means we can write a function to do something interesting then run that function from lots of places. Repeating code is generally a bad idea, and functions help us avoid doing that.
 
 we use "func" keyword, then we give the name to function. Function name should always be verb, because function is something do that.
 
 */

// Creating function with "func" keyword
func printName() {
    print("John")
}

// Call function
printName() // output: "John"


/* Functions with parameters
 You can send values to a function that can then be used inside the function to change the way it behaves.
*/

func printGivenName(name: String) {
    print("Giving name: \(name)")
}

printGivenName(name: "Patrick")
// Output: "Giving name Patrick"

/* Returning Values
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



// Argument Label and Call Site

func getUser(name userName: String){
//   userName--> ArgumentLabel

    print("Username is: \(userName)")
}

getUser(name: "Jony")
//   name --> Call site

// Omitting parameter labels. We are using the underscore (_)

func sumTwoNumber(_ firstNumber:Int, _ secondNumber: Int) -> Int{
    return firstNumber+secondNumber
}

// sumTwoNumber(<#T##firstNumber: Int##Int#>, <#T##secondNumber: Int##Int#>)
sumTwoNumber(10, 20)







