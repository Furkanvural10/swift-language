

import Foundation

// ******** Inheritance *********

class Animal {
    
    var name: String
    var age: Int
    var gender: String
    var height: Int
    var weight: Int
    
    init(name: String, age: Int, gender: String, height:Int, weight:Int) {
        self.name = name
        self.age = age
        self.gender = gender
        self.height = height
        self.weight = weight
    }
    
    
    func makeNoise(noise: String){
        print(noise)
    }
    
}

// Class Bird will inherit properties, functions of class Animal.
class Bird : Animal {
    
}

// Although I write properties and functions in class Bird, when I create an object from class Bird, it will behave like class Animal.
var myBird = Bird(name: "PeWi", age: 1, gender: "male", height: 14, weight: 1)
myBird.makeNoise(noise: "pee-wit")



// ****** Override Function ******

class Dog : Animal {
    
    // If I want to rewrite the method in the class I inherited differently, I can override it.
    override func makeNoise(noise: String) {
        print("The dog barked: \(noise)")
    }
}

let myDog = Dog(name: "Alex", age: 2, gender: "female", height: 120, weight: 12)
myDog.makeNoise(noise: "Hav-hav")








