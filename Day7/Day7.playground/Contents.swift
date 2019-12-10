import UIKit

//1. Using closures as parameters when they accept parameters
//2. Using closures as parameters when they return values
//3. Shorthand parameter names
//4. Closures with multiple parameters
//5. Returning closures from functions
//6. Capturing values
//7. Closures summary

//func travel(action: (String, Int)-> String){
//    print("I'm getting ready to go.")
//    let description = action("London", 60)
//    print(description)
//    print("I arrived!")
//}
func travel()-> (String)->Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result = travel()
result("London")
result("London")
result("London")
result("London")
result("London")

//1
//travel{(place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//2
//travel{ place -> String in
//    return "I'm going to \(place) in my car"
//}
//3
//travel{place in
//    return "I'm goint to \(place) in my car"
//}
//4
//travel{place in
//    "I'm goint to \(place) in my car"
//}
//5
//travel{
//    "I'm goint to \($0) at \($1) miles per hour."
//}
