//
//  enum.swift
//  
//
//  Created by 고요한 on 12/31/24.
//

import Foundation

enum CompassDirection {
    case north
    case east
    case south
    case west
}


let direction : CompassDirection = .south
let otherDirection = CompassDirection.east

switch direction {
    case .north: print("North")
    case .east: print("East")
    case .south: print("South")
    case .west: print("West")
}

enum Barcode{
    case qrCode(String)
    case barCode(String)
    case upc(Int,Int,Int,Int)
}

let productBarcode3 :Barcode = .qrCode("Hello World")
let productBarcode2 :Barcode = .barCode("Hello World")
let productBarcode :Barcode = .upc(123456789,123456789,123456789,123456789)

switch productBarcode {
    case .qrCode(let qrCode): print("QR Code: \(qrCode)")
    case .barCode(let barCode): print("Bar Code: \(barCode)")
case .upc(let num1, let num2, let num3, let num4):print("upc: \(num1): \(num2): \(num3): \(num4)")
}

enum Planet{
    case mercury, venus, earth
    
    func surfaceGravity()->Double{
        switch self{
            case .mercury: return 3.7
            case .venus: return 8.8
            case .earth: return 9.8
        }
    }
}


print(Planet.earth.surfaceGravity())
