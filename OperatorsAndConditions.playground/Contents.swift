import UIKit

// MARK: - Operators
 
/*
 Operators are like a math. Addiction(+), Subtraction(-), Multiplication(*), Division(/),
 and also has some operators like bang(!), grater than(>), grater than or equal to(>=), less than(<), less than or equal to(<=), "and" operator(&&), "or" operator(||), equals(==), not assignment operator(=). Be careful.
 */

let number1 = 80
let number2 = 45

let additionResult = number1 + number2
let subtractionResult = number1 - number2
let multiplicationResult = number1 * number2
let divisionResult = number1 / number2

// MARK: - Modulus Operators
// This is how you can find out if a number is even or odd. If the remainder is zero, we can say that the number is odd, not even.
let modulusResult = number1 % number2 // Output: 35


// MARK: - Equals Operators (==)
let number3 = 39
let number4 = 50
number3 == number4
// If number3 equals to number4 return the true, else return false. Usually we use the equals operators with if/else statements.


// MARK: - Bigger than or Equals Operators (>=)
let number5 = 12
let number6 = 10
number5 >= number6 // Return true because number5 is bigger than number6.

// MARK: - Less than or Equals Operators (<=)
let number7 = 13
let number8 = 12
number7 <= number8 // Return false because number7 bigger than number8.

// MARK: - Bigger than (>)
let number9 = 19
let number10 = 20
number10 > number9 // Return true

// MARK: - Less than (<)
let number11 = 21
let number12 = 20
number11 < number12 // Return false

// MARK: - Bang Operators or Exclamation Point (!)
let number13 = 45
let number14 = 78
number13 != number14
// This is saying is if value number13 is not equal to number14 return true. If equal return false


// If I put the exclamation point at the beginning of a value, it makes that value the opposite. Now isDarkModeOn will be false instead of true.
var isDarkModeOn = true
!isDarkModeOn // output: false


/*   **********   And (&&) - Or(||) Operators    *************

And ---> Returns true if two or more specified values are all true.
Or  ---> Returns true if only one of the two or more specified values is true.
 
 ****** Example Below ******
 
*/

let value1 = true
let value2 = true
let value3 = false
let value4 = false

value1 && value2
// And operator returns to true because the expressions to the right and left of And are true.

value1 && value3
// And operator returns to false because the expressions to the right false of And is false.

value1 || value3
// The result will be true because at least one of the values to the right or left of the "or operator(||)" is true.

value3 || value4
// It will return false because there is no true statement next to the "or operator(||)".

// MARK: - Conditions
/*
 If this happen do that or do this. BASIC LOGIC.
 If users logins do that, else do that

 Example-1:
 Check the age of the user, show a message to the user if he is not at the age you specified, and let the user in if he is at the age you specified.
*/

var userAge = 20

if userAge > 21 {
    print("You cannot log in as you are not over the age of 21.")
}else{
    print("You can log in.")
}

/*
 Example-2:
 If the user's score is more than 1000, give him a gift point, if not, show how many points he will get a gift.
 */

var userPoint = 849

if userPoint > 1000 {
    print("Congratulations, you have won a gift.")
    
}else{
    let result = 1000 - userPoint
    print("If you get another \(result) points, you will get a gift.")
}

/*
 If I have more than one condition, how do I check it??? Here you go.
 
 Example-3:
 How can we write the code that shows that the student's grade is AA if it is above 80, BB if it is below 80, and FF if it is below 50?
 */

let studentGrade = 67

if studentGrade < 60 {
    print("FF")
} else if studentGrade < 80 {
    print("BB")
}else{
    print("AA")
}

// MARK: - The Ternary Operator
// If we want to make the if condition appear shorter, we can use it.

let productPrice = 100 // $
let myAccount = 120 // $

let message = myAccount > productPrice   ?   "You can buy :)"    :     "You can not buy :("
//              (your condition)        (if)  (condition true)  (else)  (if condition false)

print(message)
// output: You can buy :)










