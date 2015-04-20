//
//  chapter1.swift
//  swift-testy
//
//  Created by John Fred Davis on 4/20/15.
//  Copyright (c) 2015 John Fred Davis. All rights reserved.
//

import Foundation

class Dog {
    
    var name = ""
    private var whatadogsays = ""
    init(whatadogsays:String) {
        self.whatadogsays=whatadogsays
    }
    func bark() {
        println(whatadogsays) // This is a comment
    }
    
    func sit() {
        println("sit")
    }
    
    func speak() {
        // self is optional
        self.bark()
    }
}

extension Int {
    func sayHello() {
        println("Hello, I'm \(self)")
    }
}

// the ulimate acid test for wheter something is an object in Swift
// is wheter you can modify it.
// (see mod to Int in chapter1.swift



// In swift, 1 is an object.  In objective-c it is a primative
// or scalar built-in data type.
// In swift everything is an object

// In swift 1 is a struct
// Swift also has enum
// so three kind of object types: class, structs and enums

// Objective C has structs and enums but they are not objects.

/* 
In swift variable names must be declared using either 
let or var.

A variable declared with let is a constant.
ie.
let one =1
let two =2
one=two
will not compile.
*/



func go() {
    let one = 1
    var two = 2
    two = 1
    2.sayHello()
}


















