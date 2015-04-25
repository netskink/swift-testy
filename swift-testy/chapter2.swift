//
//  chapter2.swift
//  swift-testy
//
//  Created by John Fred Davis on 4/21/15.
//  Copyright (c) 2015 John Fred Davis. All rights reserved.
//

import Foundation

func sum(x:Int, y:Int) -> Int {
    let result = x + y
    return result
}

// Three examples of void return call
func say1(s:String) -> Void {
    println(s)
}

func say2(s:String) -> () {
    println(s)
}


func say3(s:String) {
    println(s)
}

// You can have two functions with different parameters
// unlike objective-c. ie. overloaded functions

func say4(what:String) {
    
}
func say4(what:Int) {
    
}

// Its also legal to have two functions with same
// signature but differnt external parameter names
func say5(what:String) {
    
}
func say5(# what:String) {
    
}


// Function overloading also works for return types
func say6() -> String {
    return "one"
}
func say6() -> Int {
    return 1
}



// Void parameter functions
func greet1(Void) -> String {
    return "howdy"
}

func greet2() -> String {
    return "howdy"
}

func greet3() -> () {
    println("howdy")
}

func greet4() {
    println("howdy")
}

// the first parameter is internal name only
// the second parameter is external as well
func repeatString(s:String, #times:Int) -> String {
    var result = ""
    for _ in 1...times { result += s }
    return result
}

// the first parameter is internal name only
// the second parameter has an external name and an internal name as well
func repeatString2(s:String, times n:Int) -> String {
    var result = ""
    for _ in 1...n { result += s }
    return result
}

// These type of declarations work with Object-C

// For example, here’s the Objective-C declaration for a Cocoa NSString method:
//
//- (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target
//
// withString:(NSString *)replacement
//

// This method takes two NSString params and returns an NSString


// so you can actually call this Cocoa method on a Swift String, like this:
let s = "hello"
let s2 = s.stringByReplacingOccurrencesOfString("ell", withString:"ipp")
// s2 is now "hippo”


// If your code needs to assign to a parameter name within the body of a function, 
// declare the parameter name explicitly with var:
func say7(s:String, #times:Int, var #loudly:Bool) {
    var result = ""
    loudly = true // no problem
    for _ in 1...times { result += s }
    print(result + "boom!")
    
}

// However, it is also possible to configure a parameter in such a way that it 
// does modify the value of a variable outside the function body! One typical 
// use case here is that you want your function to return more than one result. 
// For example, here I’ll write a rather advanced function that removes all 
// occurrences of a given character from a given string and returns the number 
// of occurrences that were removed:
// s is declared as inout
// s must be passed as reference by adding a & in the function call.
func removeFromString(inout s:String, character c:Character) -> Int {
    var howMany = 0
    while let ix = find(s,c) {
        s.removeRange(ix...ix)
        howMany += 1
    }
    return howMany
}

