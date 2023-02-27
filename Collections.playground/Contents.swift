import UIKit


// Type Annotations -> Swift knows automatically this variable is a integer
var numberOfBooks = 100

// If you want to use type annotation, you can.
var numberOfBooks2: Int = 100

/*  ********************** ARRAY ********************
    Arrays are collections of values that are stored as a single value
    This is a array. It positions count from 0
*/

let userList = ["John", "Melisa", "Sean"]
//              0.index  1.index  2.index


// Read value using index number from array. Be careful because if you read item does not exist, crashed.
userList[0] // Output: John
userList[1] // Output: Melisa
// userList[4]  ** CRASHED ** 4.index is not exist

// Type Annotations in the Array
let bookList: [Int] = [1,2,3,4,5,6,7,8,9,10]
let fruitsList: [String] = ["Apple", "Banana", "Orange"]


/*  ********************** Set ********************
    Set is a like array but it has two differences
    1- Set is stored random order, has not index
    2- All items have to be unique. No item twice
*/

let colors = Set(["Red","Blue","Black"])
// colors[1] --> Output: Error, because set is unordered collection

print(colors)
/*
 Output can be ["Blue", "Black", "Red"] or ["Black", "Blue", "Red"],
 because it is unordered. We don't know the positions elements
 */

let allNumbers = Set([1,2,3,1,2,54,7,3,1,2,3,4])
print(allNumbers)
// Output: [3, 4, 7, 1, 2, 54] because no item twice appears like a 1 2 3


/*  ********************** Tuples ********************
    1- Store several values together in a single value.
    2- Not added items, it is fixed size
    3- Access items in tuple using numerical positions or by naming them
    4- You can not read numbers or names that don’t exist.
    ** Tuples are not used very often in Swift.
*/

var adress = (street: "21B Baker Street", city: "London")

// Read value
adress.city // Read from its names
adress.1 // Read from numerical positions


/*  ********************** Dictionaries  ********************
    1- We stored data key-value paring
    2- We read values from dictionaries
    3- var myDictionaries = [
        "key": "value"
      ]
*/

let userInfo = [
    "name" : "John",
    "surname" : "Green",
    "city" : "Paris",
    "country" : "France"
]

// Read value from dictionaries.
userInfo["name"] // Output: "John"
userInfo["city"] // Output: "Paris"
userInfo["France"] // Output: nill. Because France is a value not key.

// Type Annotations in Dictionaries. [String: String], [Int: String], [String: Bool],
var bankAccountInfo: [String: String] = [
    "bankName" : "XX Bank",
    "currency" : "Dollar",
]

// Default value in Dictionaries

userInfo["priece"]
/*
 Output: nill. userInfo dictionary has not "priece" key.
 If you use default value, you can get back "your value" rather than nil.
*/

userInfo["priece", default: "Not exist"] // Output: "Not exist"

// ********************** Create Empty Collections ***********************

// Empty Array.
let userAgeList = [Int]()
let userAdressList = Array<String>()
let userNameList: [String] = []


// Empty Set
let uniqueNumberList = Set<Int>()
let uniqueColorList: Set<String> = []


// Empty Dictionary
let teamScores = Dictionary<String, Int>()

// Note: If you want to be sure your collections is empty, you can check with this method.
// .isEmpty method returns true or false. If the collection is empty return true, else false.
userAgeList.isEmpty
uniqueColorList.isEmpty
teamScores.isEmpty


/* ******** ARRAY FILTER FEATURE **********
 
 $0 -> Refer to all items in the list
 Result return as a list.
 
 */


var studentNoteList = [67,97,54,76,75,46,89,34,68,65,45]

let passNoteList = studentNoteList.filter({ $0>=50 })
print(passNoteList)
let failNoteList = studentNoteList.filter({ $0<50 })
print(failNoteList)

// Filter with More Condition
let gradeBbNotes = studentNoteList.filter({ $0>79 && $0<90})
print(gradeBbNotes)

