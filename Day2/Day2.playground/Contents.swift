import UIKit

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

print(beatles[1])

let colors = Set(["red","green","blue"])
let colors2 = Set(["red","green","blue","red"])

//tuples
var name = (first: "Taylor", last:"Swift")
name = (first:"Emma", last:"Cao")
name = ("Eason","Zhou")
name.1
name.first
let hello = ("""
hello
are
you
ok
"""
    ,"1","2")
hello.0

//Arrays vs Sets vs Tuples
let address = (house: 55, street: "Taylor Swift Avenue", city: "Nashville")

let set = Set(["aardvark", "astronaut","azalea", "astronaut"])

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Dictionary
let height = [
    "Taylor Swift": 1.78,
    "Ed Sheeran":1.73
]

height["Tt"]

//Dictionary Default Values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Charlotte", default: "Unknow"]

//Creating empty collecitons
var teams = [String: String]()
var scores = Dictionary<String, Int>()
teams["Paul"] = "Red"

var results = [Int]()
var results2 = Array<Int>()

var words = Set<String>()

//Enumerations
enum Result {
    case success
    case failure
}

let result4 = Result.failure

//Enum Associated Values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

//Enum raw values
enum Planet: String{
    case mercury = "eee"
    case venus = "vvv"
    case earth
    case mars
}

let earth = Planet(rawValue: "vvv")



