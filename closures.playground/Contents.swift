import UIKit

let drive = {
    print("I'm driving")
}


let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving("London")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
drivingWithReturn("London")

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travel (action: drive)

// trailing closure syntax
travel {
    driving("London")
}

func travel2(action: (String) -> Void ) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived!!")
}

travel2 { (place: String) in
    print("I'm going to \(place) in my car")
}

func travel3(action: (String) -> String ) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I arrived!!")
}

travel3 { place in
    return "I'm giong to \(place)"
}
travel3 {
    return "I'm giong to \($0)"
}


func travel4(action: (String, Int) -> String ) {
    let description = action("Perf", 60)
    print(description)
}

travel4 {
    return "I'm going to \($0) at \($1)kmph"
}

func travel5() -> (String) -> Void {
    var counter = 1
    return {
        print("I'm goingggg to \($0)")
        counter += 1
    }
}
let result = travel5()
result("London")
result("London")
// counter increases
result("London")
