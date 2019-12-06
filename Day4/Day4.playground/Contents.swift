import UIKit

//1. For loops

let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")
for _ in 1...5 {
    print("play")
}

for beatle in ["John", "Paul", "Ringo"] {
    print("\(beatle) was in the Beatles")
}

print("Haters gonna ")
for _ in 1...4 {
    print("hate")
}

//var speeds = (65, 58, 72)
//for speed in speeds {
//    print("You were driving at \(speed)km/h.")
//}

//2. While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

number = 10
while number > 0 {
    number -= 2
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
}

var speed = 50
while speed <= 55 {
    print("Accelerating to \(speed)")
    speed += 1
}

//3. Repeat loops
number = 1

repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")

var frogs = 4
repeat {
    for _ in 1...frogs {
        print("Ribbit!")
    }
} while false

//4. Exiting loops

var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}
print("Blast off!")

//5. Exiting mltiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseys!")
            break outerLoop
        }
    }
}

//6. Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

var hoursStudied = 0
var goal = 10
repeat {
    hoursStudied += 1
    if hoursStudied > 4 {
        goal -= 1
        continue
    }
    print("I've studied for \(hoursStudied) hours")
} while hoursStudied < goal

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
    let value = fibonacci[position]
    position += 1
    if value < 2 {
        continue
    }
    print("Fibonacci number \(position) is \(value)")
}

var carsProduced = 0
repeat {
    carsProduced += 1
    if carsProduced % 2 == 0 {
        continue
    }
    print("\(carsProduced) Another car was built.")
} while carsProduced < 20

//7. Infinite loops
//var counter = 0
//
//while true {
//    print("1")
//    counter += 1
//
//    if counter == 273 {
//        break
//    }
//}

var kids = 1
repeat {
    print("Kids in the class: \(kids)")
    kids += 1
} while kids != 10

//8. Looping summary
//var population = 7_500_000_000
//repeat {
//    print("More babies have been born.")
//    population = population * 1.0001
//} while true
