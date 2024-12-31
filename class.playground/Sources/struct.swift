//
//  Untitled.swift
//  
//
//  Created by 고요한 on 12/31/24.
//

import Foundation

struct Point {
    var x: Int
    var y: Int
    
    func distanceFromOrigin() -> Double {
        let distance = sqrt(Double(x^2 + y^2))
        return distance
    }
    
    mutating func moveBy(_ deltaX: Int, _ deltaY: Int)-> Double{
        x += deltaX
        y += deltaY
        let movedDistance = distanceFromOrigin()
        return movedDistance
    }xq
}

struct circle{
    var radius: Double
    
    var area:Double{
        let pi = Double.pi
        return pi * radius * radius
    }
}

var point = Point(x: 1, y: 2)
print(point.distanceFromOrigin())
print(point.moveBy(3, 4))

var circles = circle(radius: 5)
print(circles.area)
