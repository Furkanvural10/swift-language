import UIKit


// MARK: - LOOPS
 
// A loop allows us to perform an action in return for a certain condition.


// MARK: -  While Loops

var number = 0

while number > 10 {
// As long as this condition(number > 10) is true, run the code below
    
    print("Number: \(number)")
    number += 1
// You have to increase the value of the variable number or the condition in the while loop will always be satisfied and you will end up in the loop.
}


var isUserActive = true
while isUserActive {
    print("User active, show new news from database.")
    
    // Suppose the user pressed the exit button.
    isUserActive = false
}

// MARK: - For Loop
 
 //Most of the time we use for loop to access values inside arrays. It takes the values in the array one by one and gives them to us.


let myNumber: [Int] = [1,2,3,4,5,6,7,8,9,10]

for value in myNumber {
    print("Value: \(value)")
//  output: Value: 1, Value: 2, ... Value:10
}

// MARK: - For Loop with Range
/*
 1..<10 --> Returns numbers from 1 to 10. (10 not included)
 10...100 --> Returns numbers from 10 to 100. (100 included)
*/

for number in 1...10 {
    print(number)
// It will print the numbers from 1 to 10 one by one.
}

// MARK: - Tricks/Tips
// If you want to generate random number, you can use.
var randomNumber = Int.random(in: 1...100) // Returns a random number between 1 and 100.


// You can exit a loop at any time using the "break" keyword.

let colors = ["Blue","Orange","White","Black","Yellow"]

for i in colors {
    if i == "White" {
        break // exit loop condition true
    }
}

// MARK: - Skipping Item - "continue"

for i in 1...5 {
    
    if i == 2 {
        continue // skip loop condition true. Just skip, not exit!
    }
    print("i value: \(i)")
    /* Output:
     i value: 1
     i value: 3
     i value: 4
     i value: 5
     */
}
