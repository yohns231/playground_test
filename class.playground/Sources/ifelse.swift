//
//  ifelse.swift
//  
//
//  Created by 고요한 on 1/2/25.
//

import Foundation

enum PoolBallType : String{
    case solid
    case stripe
    case black
}

func poolBallType(_ number: Int) -> PoolBallType?{
    if number < 8 && number > 0{
        return .solid
    }
    else if number > 8 && number < 16{
        return .stripe
    }
    else if number == 8 {
        return .black
    }
    else {return nil}
}

func printBallDetails(_ num:Int){
    let poolballtype = poolBallType(num)
    if let poolballTypes = poolballtype{
        print("poolball num : \(num) is \(poolballTypes.rawValue)")
    }
    else {
        print("poolball num : \(num) is not exacting num")
    }
}

class PoolFrame {
    var player1BallType : PoolBallType?
    var player2BallType : PoolBallType?
}

class poolTable {
    var currentFrame : PoolFrame?
}

func printBallTypeOfPlayer1(_ table:poolTable) {
    if let frame = table.currentFrame,
       let ballType = frame.player1BallType{
        print(ballType.rawValue)
    }
    else {
        print("player 1 has no ball type or there is no cureent frame")
    }
}

func printBallTypeOfPlayer2(_ table:poolTable) {
    if let frame = table.currentFrame,
       let ballType = frame.player2BallType{
        print(ballType.rawValue)
    }
    else {
        print("player 2 has no ball type or there is no cureent frame")
    }
}
    
    
let two = poolBallType(2)
let eight = poolBallType(8)
let twelve = poolBallType(12)
let zero = poolBallType(0)
let sixty = poolBallType(16)

printBallDetails(2) // 2 - solid
printBallDetails(8) // 8 - black
printBallDetails(12) // 12 - stripe
printBallDetails(0) // 0 is not a valid pool ball number
printBallDetails(16) // 16 is not a valid pool ball number

let frame = PoolFrame()
frame.player1BallType = nil
frame.player2BallType = nil
let table = poolTable()
table.currentFrame = nil
printBallTypeOfPlayer1(table)

table.currentFrame = frame
printBallTypeOfPlayer1(table)
printBallTypeOfPlayer2(table)
frame.player1BallType = .solid
frame.player2BallType = .stripe

printBallTypeOfPlayer1(table)
printBallTypeOfPlayer2(table)
