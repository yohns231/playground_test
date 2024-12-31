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
