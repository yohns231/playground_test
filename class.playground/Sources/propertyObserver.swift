//
//  propertyObserver.swift
//  
//
//  Created by 고요한 on 1/2/25.
//

import Foundation

class UesrManger {
    var currentUserName : String = "Emauel Goldstein"{
        willSet {
            print("will set \(newValue) from \(currentUserName)")
        }
        didSet {
            print("Did set \(oldValue) to \(currentUserName)")
        }
    }
    
    init(_ currentUesrName: String){
        self.currentUserName = currentUesrName
    }
    
    func changeName(_ name:String) -> Void {
        self.currentUserName = name
    }
    
}

let manager = UesrManger("김아무게")
manager.changeName("김처수")

