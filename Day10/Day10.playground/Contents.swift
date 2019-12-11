import UIKit

//1. Creating your own classes
//2. Class inheritance
//4. Overriding methods
//5. Final classes
//6. Copying objects
//7. Deinitializers
//8. Mutability

final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

//class Poodle: Dog {
//    override func makeNoise() {
//        print("Yip!")
//    }
//}
//
//let poppy = Poodle()
//poppy.makeNoise()

class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

class Hospital {
    var onCallStaff = [String]()
}
var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")
print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)


class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting(){
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!\n")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

