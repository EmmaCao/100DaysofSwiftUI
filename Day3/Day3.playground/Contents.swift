import UIKit

//1. Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

var result = 7-1-1

//2. Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42+42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//let result = false + false

//3. Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//4. Comparison operators
let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1
firstScore1 != secondScore1
firstScore1 < secondScore1
firstScore1 >= secondScore1

"Taylor" <= "Swift"

//5. Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//var actualWage: Int = 22_000
//var medianWage: Double = 22_000
//if actualWage >= medianWage {
//    print("Success")
//}

//6. Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

//7. The ternary operator
let firstCard1 = 11
let secondCard1 = 10
print(firstCard1 == secondCard1 ? "Cards are the same" : "Cards are different")

//8. Switch statements
let weather = "rain"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//9. Range operators
score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

//10. Operators and conditions summary
let passingGrade = 70...100

print(passingGrade)

let height = 10
let width = 20
height < width

//let numberOfCats = 1
//switch numberOfCats {
//case 0:
//    print("You have no cats")
//case 1...3:
//    print("You have some cats")
//case 4..<10:
//    print("You have many cats!")
//}

let tvShow = "Breaking " + "Bad"
