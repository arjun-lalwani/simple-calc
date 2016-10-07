//
//  main.swift
//  SimpleCalc
//
//  Created by Arjun Lalwani on 06/10/16.
//  Copyright © 2016 Arjun Lalwani. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")
let num1 = readLine(strippingNewline: true)
let x = UInt.init(num1!)

let operation = readLine(strippingNewline: true)


var add: UInt = x!
if (operation == "fact") {
    
    var x1: UInt = x!
    var fact: UInt = 1
    while (x1 != 0) {
        
       fact *= x1
       x1 -= 1
    }
    print(fact)
    
} else if (operation != "+" && operation != "-" && operation != "*" && operation != "/") {
    
    var end: Bool = true
    var count: UInt = 2
    let y = UInt.init(operation!)
    add += y!
    
    while (end) {
        
        let input = readLine(strippingNewline: true)
        if (input == "count") {
            end = false
            print(count)
        } else if (input == "avg") {
            end = false
            print (add / count)
        } else {
            
            let number = UInt.init(input!)
            count += 1
            add += number!
        }
    }
    
} else {
    
    let num2 = readLine(strippingNewline: true)
    let y = UInt.init(num2!)
    
    if (operation == "+") {
        
    print(x! + y!)
    } else if (operation == "-") {

    print(x! - y!)
        
    } else if (operation == "/") {

    print(x! / y!)

    } else if (operation == "*") {

    print(x! * y!)
    
    }
}
