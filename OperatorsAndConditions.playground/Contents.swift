import UIKit

/*   *********** Operators **************
 
 Operators are like a math. Addiction(+), Subtraction(-), Multiplication(*), Division(/),
 and also has some operators like bang(!), grater than(>), grater than or equal to(>=), less than(<), less than or equal to(<=), "and" operator(&&), "or" operator(||), equals(==), not assignment operator(=). Be careful.
 
 */

let number1 = 80
let number2 = 45

let additionResult = number1 + number2
let subtractionResult = number1 - number2
let multiplicationResult = number1 * number2
let divisionResult = number1 / number2

// Modulus Operators
// This is how you can find out if a number is even or odd. If the remainder is zero, we can say that the number is odd, not even.
let modulusResult = number1 % number2 // Output: 35


// Equals Operators (==)
let number3 = 39
let number4 = 50
number3 == number4
// If number3 equals to number4 return the true, else return false. Usually we use the equals operators with if/else statements.


// Bigger than or Equals Operators (>=)
let number5 = 10
let number6 = 10
number5 >= number6 // Return true because number5 equals to number6.

// Less than or Equals Operators (<=)
let number7 = 13
let number8 = 12
number7 <= number8 // Return false because number7 bigger than number8.

// Bigger than (>)
let number9 = 19
let number10 = 20
number10 > number9 // Return true

// Less than (>)
let number11 = 21
let number12 = 20
number11 < number12 // Return false

// Bang Operators or Exclamation Point (!)
let number13 = 45
let number14 = 78
number13 != number14
// This is saying is if value number13 is not equal to number14 return true. If equal return false

var isDarkModeOn = true
!isDarkModeOn
// If I put the exclamation point at the beginning of a value, it makes that value the opposite. Now isDarkModeOn will be false instead of true.

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











