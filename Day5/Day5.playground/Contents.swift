import UIKit

//1. Writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}

printHelp()

//2. Accepting parameters
//3. Returning values

func square(number: Int) -> Int {
    return (number * number)
}

let result = square(number: 22)
print(result)

//4. Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

func isPassingGrade(for scores: [Int]) -> Bool {
    var total = 0
    for score in scores {
        total += score
    }
    if total >= 500 {
        return true
    } else {
        return false
    }
}

isPassingGrade(for: [1,2,3])

//5. Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Taylor")

//6. Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    }else {
        print("Oh no, it's \(person) agsin...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)

//6. Variadic functions
func square(numbers: Int...){
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square()

//7. Writing throwing functions
//8. Running throwing functions
enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is goog!")
} catch {
    print("You can't use that password.")
}

enum BuildingError: Error {
    case tooHigh
    case tooLow
}
func constructBuilding(floors: Int) throws {
    if floors < 10 {
        throw BuildingError.tooLow
    } else if floors > 500 {
        throw BuildingError.tooHigh
    }
    print("Perfect - let's get building!")
}

//5/12
enum MeasureError: Error {
    case unknownItem
}
func measure(itemName: String) throws -> Double {
    switch itemName {
    case "bookcase":
        return 2.0
    case "chair":
        return 1.0
    case "child":
        return 1.3
    default:
        return 1.75
    }
}

//9. inout parameters
func doubleInPlage(number: inout Int,number1: inout Int,number2: inout Int,number3: inout Int) {
    number *= 2
}

var myNum = 10
var myNum1 = 10
var myNum2 = 10
var myNum3 = 10
doubleInPlage(number: &myNum, number1: &myNum1, number2: &myNum2, number3: &myNum3)
