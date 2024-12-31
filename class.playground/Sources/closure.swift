//
//  closure.swift
//  
//
//  Created by 고요한 on 12/31/24.
//

import Foundation

let simpleClosure = { print("Hello World!") }
let multiplyClosure: (Int, Int) -> Int = {x,y in x*y }

func performOperation(_ a: Int,_ b: Int,operation: (Int, Int) -> Int) -> Int {
    return operation(a,b)
}

let list_num = [1,2,3,4,5]
let squaredNumber = list_num.map(){ a in a*a}

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
    let incrementer: () -> Int = {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}







simpleClosure()
print(multiplyClosure(1,2))
let operationResult = performOperation(1,2,operation: multiplyClosure)
print(operationResult)
print(squaredNumber)
let incrementer = makeIncrementer(forIncrement: 10)
print(incrementer())
