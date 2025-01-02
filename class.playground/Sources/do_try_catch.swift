//
//  do_try_catch.swift
//  
//
//  Created by 고요한 on 1/2/25.
//

import Foundation

enum CompassPoint {
    case north
    case south
    case east
    case west
}


func lookTowards(_ direction : CompassPoint){
    switch direction {
    case .north: print("North")
    case .south: print("South")
    case .east: print("East")
    case .west: print("West")
    }
}

enum Item {
    case key
    case lockedDoor
    case openDoor
    case bluntKnife
    case sharpeningStone
    case sharpKnife
}

func combine(_ firstItem : Item, _ secondItem : Item) -> Item? {
    switch (firstItem,secondItem) {
    case (.key,.lockedDoor):
        print("문을 열었습니다")
        return .openDoor
    case (.bluntKnife,.sharpeningStone):
        print("칼이 날카로워졌습니다.")
        return .sharpKnife
    default:
        print("\(firstItem)과 \(secondItem)은 결합할 수 없습니다.")
        return nil
    }
}

enum CoinFlip : Int {
    case heads
    case tails
    
    static func aaaaaa(){
        print("init heads = \(heads.rawValue)")
    }
    
    static func flip() -> CoinFlip{
        let num : Int = Int.random(in: 0...1)
        let cointpye = CoinFlip(rawValue: num)!
        print("num is:\(num) CoinFlips is: \(cointpye)")
        return cointpye
    }
}

func howManyHeadsInRow(_ flips: Int) -> Int {
    var numberOfHeadsInRow = 0
    var currentFlip : CoinFlip = CoinFlip.flip()
    while currentFlip == .heads{
        numberOfHeadsInRow += 1
        currentFlip = CoinFlip.flip()
    }
    return numberOfHeadsInRow
}

enum MealError : Error {
    case canOnlyMoveToAppropriateState
    case tooMuchSalt
    case wrongStateToAddSalt
}

enum MealState {
    case initial
    case buyImgerdients
    case prepareIngredients
    case cook
    case platUp
    case server
}

class Meal {
    private(set) var state : MealState = .initial
    private(set) var saltAdded : Int = 0
    
    func change(_ newstate:MealState) throws{
        switch (state, newstate) {
        case (.initial,.buyImgerdients),(.buyImgerdients,.prepareIngredients),(.prepareIngredients,.cook),(.cook,.platUp),(.platUp,.server) :
            state = newstate
        default : throw MealError.canOnlyMoveToAppropriateState
        }
    }
    func addSalt() throws {
        if saltAdded >= 5 {throw MealError.tooMuchSalt}
//        switch state {
//        case .initial, .buyImgerdients
//            : throw MealError.wrongStateToAddSalt
//
//        default: saltAdded += 1
//        }
        
        else if  .initial == state || .buyImgerdients == state {
            throw MealError.wrongStateToAddSalt
        }
        else {saltAdded += 1}
    }
    
}


lookTowards(.north)
let door = combine(.key, .lockedDoor)
let oilAndWater = combine(.bluntKnife, .lockedDoor)

let ledzeppelin = ["John", "Paul", "Ringo", "George"]
for musician in ledzeppelin{
    print(musician)
}

for value in 1...12{
    print("5 X \(value) = \(value * 5)")
}

let zeppelineByInstrument = ["vocal":"Robert","lead guitar": "Jimmy"]

for (key,value) in zeppelineByInstrument{
    print("\(value)가 \(key)를 연주합니다.")
}

ledzeppelin.forEach {print($0)}
zeppelineByInstrument.forEach {print($0,$1)}

let noOfHeeads = howManyHeadsInRow(100)
CoinFlip.aaaaaa()
print(noOfHeeads)

let dinner = Meal()
do {
    try dinner.change(.buyImgerdients)
    try dinner.change(.prepareIngredients)
    try dinner.change(.cook)
    try dinner.change(.platUp)
    try dinner.change(.server)
}
catch let error{
    print(error)
}

do {
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
}
catch let error{
    print(error)
}
catch MealError.canOnlyMoveToAppropriateState{
    print("11")
}
catch MealError.tooMuchSalt{
    print("It's to much salt")
}
catch MealError.wrongStateToAddSalt{
    print("이 단계에서는 소금을 추가할 수 없습니다. ")
}


