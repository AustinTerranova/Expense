//: Playground - noun: a place where people can play

import UIKit

class Dog {
    var name: String = ""
    
    var owner: String = ""
    
    var age: Int
        = 0
    init(name: String, owner:String, age:Int) {
        self.name = name
        self.owner = owner
        self.age = age
    }
    var dogTag: String {
        get {
            return "if lost, return to:  \(owner)"
        }
    }


    func bark(){
        print("woof")
    
    }
}
var puppy = Dog(name: "Logan", owner: "Austin", age: 7)
puppy.bark()
print(puppy.dogTag)
