//
//  optional.swift
//  
//
//  Created by 고요한 on 12/31/24.
//


import Foundation

public func optional_show(){
    var dayOfTheWeek: String = "Monday"
    print(dayOfTheWeek)
    dayOfTheWeek = "Tuesday"
    print(dayOfTheWeek)
    
    var numberOfFingerHeldUpFinn : Int?
    numberOfFingerHeldUpFinn = 1
    print(numberOfFingerHeldUpFinn!)
    numberOfFingerHeldUpFinn = nil
    //print(numberOfFingerHeldUpFinn ?? "niiiiiiiil")
    
    //var lastNumberOfFingersHeldUpByFinn : Int = numberOfFingerHeldUpFinn!
    //print(lastNumberOfFingersHeldUpByFinn)
    
    if let numberOfFingerHeld = numberOfFingerHeldUpFinn{
        print(numberOfFingerHeld)
    }
    else {print("모름")}
    
    //guard let numberOfFingerHeld = numberOfFingerHeldUpFinn else{
    //    print("모름요")
    //}
    //print(numberOfFingerHeld)
}


