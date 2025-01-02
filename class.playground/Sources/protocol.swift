//
//  protocol.swift
//  
//
//  Created by 고요한 on 1/2/25.
//

import Foundation


protocol Descripbable{
    var description: String { get }
}

struct Person: Descripbable{
    let name: String
    let age: Int
    
    var description: String {
        return "Person \(name) is \(age)"
    }
}

protocol Movavle{
    func move(to point: CGPoint)
}

class Car : Movavle{
    var postion : CGPoint = CGPoint(x:0, y: 0)
    func move(to point:CGPoint){
        postion = point
        print("car moved to \(point)")
    }
}

protocol Named {
    init(name : String)
}

class person_name : Named{
    let name : String
    required init(name : String) {
        self.name = name
    }
    
    func displayName(){
        print("name is \(name)")
    }
}

struct person_name_to_struct : Named{
    let name : String
    init(name : String) {
        self.name = name
    }
    
    func displayNamed(){
        print("struct name is \(name)")
    }
}


protocol payable {
    func calculateWages() -> Double
}

protocol TimeOffRequestable{
    func requestTimeOff(days : Int) -> Bool
}

func processEmployee(employee : payable & TimeOffRequestable) {
    let wages = employee.calculateWages()
    let timeOffRequested = employee.requestTimeOff(days: 10)
}

protocol Container{
    associatedtype type_Item
    mutating func add(_ type: type_Item)
    var count : Int {get}
}

struct Instack : Container{
    typealias type_Item = Int
    private var items : [int] = []
    mutating func add(_ item : Int) {item.append(item)}
    var count : Int {items.count}
}



let person = Person(name: "jj", age: 20)
print(person.description)

let cars = Car()
cars.move(to: CGPoint(x:10,y:10))
cars.move(to: CGPoint(x:10,y:10))

let personname = person_name(name: "jj")
personname.displayName()

let personname_to_struct = person_name_to_struct(name: "jj")
personname_to_struct.displayNamed()
