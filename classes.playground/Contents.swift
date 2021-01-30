import UIKit

// classes are resuable

class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }

    func makeNoise() {
        print("Woof")
    }
}
let bostonTerrier = Dog(name: "Gus", breed: "Boston Terrier")

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    override func makeNoise() {
        print("Yip!")
    }
}

final
// final class - no class can inherit or override

// deinnit
class Person {
    var name = "John Doe"
    init() {
        print("\(name) us alive!")
    }
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is deinitialized.")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// mutability

