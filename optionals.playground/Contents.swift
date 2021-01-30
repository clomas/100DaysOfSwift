import UIKit

let names = ["John", "Paul", "Georghe"]

let beatle = names.first?.uppercased() //optional chanining - if there is no .first it will be nil


if let result = try? checkPassword("password") {
    print("result was \(result)")
} else {
    print("D'oh")
}

try! checkPassword("sekrit")


// optional init, can return nil
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

// typecasting
class Animal{}
class Fish: Animal {}
class Dog: Animal {
    func makeNoise() {
        print("woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]


//~~//~~//~~//~~//~~//     throwing func     //~~//~~//~~//~~//~~//
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
    print("that password is good")
} catch {
    print("too obvious")
}
