import UIKit


// MARK: - Array
// Arrays are collections of values that are stored as a single value
// This is a array. It positions count from 0


let userList = ["John", "Melisa", "Sean"]
//              0.index  1.index  2.index

// MARK: - Read value
// Using index number from array. Be careful because if you read item does not exist, crashed.

userList[0] // Output: John
userList[1] // Output: Melisa

// userList[4]  ** CRASHED ** 4.index is not exist


// MARK: - Type Annotations in the Array

let bookList: [Int] = [1,2,3,4,5,6,7,8,9,10]
let fruitsList: [String] = ["Apple", "Banana", "Orange"]

// MARK: - Creating Empty Array
let userAgeList = [Int]()
let userAdressList = Array<String>()
let userNameList: [String] = []


// MARK: - Set

/*
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

let orderNumber = Set([1,2,3,4,5,6,7,8,9,10, 11])
let oddNumber = Set([1,3,5,7,9])
let continueNumber = Set([12, 13, 14, 15])

let intersectionResult = orderNumber.intersection(oddNumber).sorted()
print(intersectionResult)
// [1, 3, 5, 7, 9]

let symmetricDifferenceResult = orderNumber.symmetricDifference(oddNumber).sorted()
print(symmetricDifferenceResult)
// [2, 4, 6, 8, 10]

let unionResult = orderNumber.union(continueNumber).sorted()
print(unionResult)
// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

let subtractingResult = orderNumber.subtracting(oddNumber).sorted()
print(subtractingResult)
// [2, 4, 6, 8, 10, 11]



// MARK: - Creating Empty Set

let uniqueNumberList = Set<Int>()
let uniqueColorList: Set<String> = []


// MARK: - Tuples

/*
    1- Store several values together in a single value.
    2- Not added items, it is fixed size
    3- Access items in tuple using numerical positions or by naming them
    4- You can not read numbers or names that don’t exist.
    ** Tuples are not used very often in Swift.
*/

var address = (street: "21B Baker Street", city: "London")

// Read value
address.city // Read from its names
address.1 // Read from numerical positions


// MARK: - Dictionary
/*
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
userInfo["France"] // Output: nil. Because France is a value not key.

// Type Annotations in Dictionaries. [String: String], [Int: String], [String: Bool],
var bankAccountInfo: [String: String] = [
    "bankName" : "XX Bank",
    "currency" : "Dollar",
]

// Default value in Dictionaries

userInfo["price"]
/*
 Output: nil. userInfo dictionary has not "price" key.
 If you use default value, you can get back "your value" rather than nil.
*/

userInfo["price", default: "Not exist"] // Output: "Not exist"

// MARK: - Creating Empty Dictionary

let teamScores = Dictionary<String, Int>()


// Note: If you want to be sure your collections is empty, you can check with this method.
// .isEmpty method returns true or false. If the collection is empty return true, else false.
userAgeList.isEmpty
uniqueColorList.isEmpty
teamScores.isEmpty


// MARK: -  ARRAY FILTER FEATURE
 
// $0 -> Refer to all items in the list
// Result return as a list.



var studentNoteList = [67,97,54,76,75,46,89,34,68,65,45]

let passNoteList = studentNoteList.filter({ $0>=50 })
print(passNoteList)
let failNoteList = studentNoteList.filter({ $0<50 })
print(failNoteList)

// Filter with More Condition
let gradeBbNotes = studentNoteList.filter({ $0>79 && $0<90})
print(gradeBbNotes)

// MARK: -  DICTIONARY FILTER FEATURE

var classNote : [String:Int] = [
    "John" : 47,
    "Brown" : 34,
    "Melissa" : 57,
    "Jeremy" : 54,
    "Philip" : 90,
    "Adam" : 100,
    "Billy" : 65,
]

var passedStudents = classNote.filter({$0.value > 50})
// passedStudents -> ["Jeremy": 54, "Lara": 100, "Philip": 90, "Melissa": 57]

var startWithBLetter = classNote.filter({$0.key.starts(with: "B") })
// startWithBLetter -> ["Billy": 65, "Brown": 34]

var moreConditionList = classNote.filter({$0.key.starts(with: "B") && $0.value>50 })
// ["Billy": 65]


// MARK: - ARRAY REDUCE FUNCTION

var teamPointsArray = [45, 65, 62, 56, 94, 86, 43, 56, 24]
var sumTeamsPoints = teamPointsArray.reduce(0, {$0 + $1})
print(sumTeamsPoints)
