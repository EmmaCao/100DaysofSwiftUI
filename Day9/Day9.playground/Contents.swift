import UIKit

//1. Initializers
//2. Referring to the current instance
//3. Lazy properties
//4. Static properties and methods
//5. Access control
//6. Structs summary

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

///
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    private var id: String
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String, id: String) {
        print("\(name) was born!")
        self.name = name
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

var ed = Person(name: "Ed", id: "123456")
//ed.familyTree
ed.identify()

///
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

//let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

print(Student.classSize)

struct School {
    var staffNames: [String]
    private var studentNames: [String]
    init(staff: String...) {
        self.staffNames = staff
        self.studentNames = [String]()
    }
}
let royalHigh = School(staff: "Mrs Hughes","Emma")

royalHigh.staffNames

struct Customer {
    var name: String
    private var creditCardNumber: Int
    init(name: String, creditCard: Int) {
        self.name = name
        self.creditCardNumber = creditCard
    }
}
let lottie = Customer(name: "Lottie Knights", creditCard: 1234567890)
