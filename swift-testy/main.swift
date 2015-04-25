//
//  main.swift
//  swift-testy
//
//  Created by John Fred Davis on 4/20/15.
//  Copyright (c) 2015 John Fred Davis. All rights reserved.
//

import Foundation

println("Hello, World!")


// Chapter 1 exercises

// Using chaper1.swift
let chaulky = Dog("woof")
chaulky.bark()
chaulky.sit()

// integers are objects?
let sum = 1 + 2
let x = 1.successor()
println(x)

let y = "hello".generate()

1.sayHello()
go()

//  Chapter 2 exercises

println(sum(1,2))
// Can't use let here, since we have it above
let xx=5
let yy=7
let z=sum(xx,yy)
println(z)

var stFoo = greet1()
println(stFoo)
stFoo = greet2()
println(stFoo)
greet3()
greet4()

println(repeatString("hi",times:3))
println(repeatString2("hi",times:3))

let d = Dog("woof")
d.say(s:"woof",times:3)

// But now you can't call say6 like this:
// let result = say()
let result6:Int = say6()

// And you can do this, since only a String can go here.
let result6string = say6() + "two"

// If parms with external names exist then 
// they can be called out of order
d.say2(times:3, s: "foo")

// times is a named parm and must be specified. loudly 
// is a named parm and must be specified, but it is also
// a variable which can be modifed in the function.
var my_loudly = false
say7("Yo ",times: 5,loudly: my_loudly);
// cant do this though, loudly is not a default parm
//say7("Yo ",times: 5)
print("but loudly is still false out here ")
println(my_loudly)
// another way
println("but loudly is still false out here " + String(stringInterpolationSegment: my_loudly))


// Here is how we can modify a parameter in the function
// and pass the modifed result back to the caller.
// The parameter must be declared as var instead of let.
// The parameter must be passed as reference with & 
// The function must use the inout keyword.
var s3 = "hello"
let result = removeFromString(&s3, character:Character("l")) // 2“
println("number of chars removed " + String(result))
println("new s3 " + s3)






