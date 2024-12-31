//
//  class.swift
//  
//
//  Created by 고요한 on 12/31/24.
//

import Foundation

class Person{
    let givenName: String
    let familyName: String
    let middleName: String?
    var country :String = "KR"
    
    init(givenName: String, familyName: String, middleName: String? = nil){
        self.givenName = givenName
        self.familyName = familyName
        self.middleName = middleName
    }
    
    var displayName: String{
        return "\(fullname()) - Location: \(country)"
    }
    
    func fullname() -> String{
        var fullname = ""
        if let middleName{
            fullname += middleName + " "
        }
        fullname += givenName + " " + familyName
        return fullname
    }
    
    static func createDummyperson(_ a:String,_ b:String) -> Person{
        return Person(givenName: a, familyName: b)
    }
    
}

let a = Person(givenName: "young", familyName: "dd")

let b = a.fullname()
print(b)

let c = Person.createDummyperson("young", "ddss")
print(c.displayName)

final class Friend:Person{
     var wheremet: String?
    override var displayName: String{
        return super.displayName + " - Where met: \(wheremet ?? "")"
    }
}

let friend = Friend(givenName: "young", familyName: "dd")
friend.wheremet = "Seoul"
print(friend.displayName)

final class Family : Person{
    let relationship : String
    
    init(givenName: String, familyName: String, middleName: String? = nil, relationship: String){
        self.relationship = relationship
        super.init(givenName: givenName, familyName: familyName,middleName: middleName)
    }
}

