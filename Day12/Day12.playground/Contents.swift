import Foundation

//1. Handling missing data
//2. Unwrapping optionals
//3. Unwrapping with guard
//4. Force unwrapping
//5. Implicitly unwrapped optionals
//6. Nil coalescing
//7. Optional chaining
//8. Optional try
//9. Failable initializers
//10. Typecasting

var age: Int? = nil
age = 38

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

let tableHeight: Double? = 100
if let test = tableHeight {
    if test > 85.0 {
        print("The table is too high.")
    }
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

func username(for id: Int?) -> String? {
    guard let id = id else {
        return nil
    }
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
if let user = username(for: 1989) {
    print("Hello, \(user)!")
}

let str = "2"
let num = Int(str)!

let legoBricksSold: Int? = 400_000_000_000
let numberSold = legoBricksSold!

func title(for page: Int) -> String? {
    guard page >= 1 else {
        return nil
    }
    let pageCount = 132
    if page < pageCount {
        return "Page \(page)"
    } else {
        return nil
    }
}
let pageTitle = title(for: 16)!

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

let songs: [String] = [String]()
let finalSong = songs.last

enum PasswordError: Error {
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
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("passsword") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("passsword")
print("OK!")


struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let per = Person(id: "dddddddddd")


class Animal {}
class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}


enum NetworkError: Error {
    case insecure
    case noWifi
}
func downloadData(from url: String) throws -> String {
    if url.hasPrefix("https://") {
        return "This is the best Swift site ever!"
    } else {
        throw NetworkError.insecure
    }
}
if let data = try? downloadData(from: "https://www.hackingwithswift.com") {
    print(data)
} else {
    print("Unable to fetch the data.")
}


let cat: String? = "Toby"
if let cat = cat {
    print("The cat's name is \(cat).")
}
