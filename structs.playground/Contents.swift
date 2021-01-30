import UIKit

// computed properties

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic Sport"
        } else {
            return "\(name) is not an Olympic Sport"
        }
    }
}

let chessBoxing = Sport(name: "Chess Boxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// property observers -

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is not \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)

// methods

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()

// mutating methods
struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

struct User {
    var userName: String
    init() {
        // default
        userName = "Anonymous"
        print("Creating a new user")
    }
}

// using self
struct Person2 {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

struct FamilyTree {
    init() {
        print("Creating Family Tree")
    }
}

// lazy properties
struct Person3 {
    var name: String
    lazy var familyTree = FamilyTree()
    init(name: String) {
        self.name = name
    }
}
var ed = Person3(name: "Ed")
ed.familyTree // only prints when accessing cuz of lazyyy

// static prop and methods.
struct Student {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let eddy = Student(name: "Ed")
let stephen = Student(name: "Stephen")
Student.classSize // 2

struct Person4 {
    private var id: String // private
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)" // only accesible inside struct
    }
}
let eddo = Person4(id: "3232")
