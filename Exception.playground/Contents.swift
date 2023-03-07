import UIKit

/* ****** EXCEPTION ********
 
 There are two types of exception.
 1- Run time ---> Folder is not found, simulator crash
 2- Compiler Error ---> Syntax error
 
 */

// DO TRY CATCH

enum Errors: Error {
    case zeroNumberError
}

func divideTwoNumber(firstNumber: Int, secondNumber: Int) throws -> Int {
    if firstNumber == 0 || secondNumber == 0{
        throw Errors.zeroNumberError
    }
    return firstNumber + secondNumber
}

do {
    let result = try divideTwoNumber(firstNumber: 1, secondNumber: 0)
    print(result)
} catch Errors.zeroNumberError {
    print("Number is not be zero")
}





 
