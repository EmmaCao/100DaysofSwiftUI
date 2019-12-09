import UIKit

//1. Creating basic closures
//2. Accepting parameters in a closure
//3. Returning values from a closure
//4. Closures as parameters
//5. Trailing closure syntax
let driving = {
    print("I'm going to in my car")
}

func travel(action: ()->Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel {
    print("I'm driving in my car")
}

//
func holdClass(name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
holdClass(name: "Philosophy 101") {
    print("ttattt")
}

//
func phoneFriend(conversation: () -> Void) {
    print("Calling 555-1234...")
    conversation()
}
phoneFriend{
    print("Hello!")
    print("A foreign prince wants to give you $5 million.")
    print("What are your bank details?")
}

//
func doTricks(_ tricks: () -> Void) {
    print("Start recording now!")
    tricks()
    print("Did you get all that?")
}

//
func goCamping(then action: () -> Void) {
    print("We're going camping!")
    action()
}
goCamping {
    print("Sing songs")
    print("Put up tent")
    print("Attempt to sleep")
}
