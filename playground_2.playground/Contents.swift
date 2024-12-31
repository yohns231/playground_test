import Foundation

func main(){
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

main()


