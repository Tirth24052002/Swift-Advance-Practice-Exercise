import UIKit
////===================  Enum ========================================================////
////Practical-1
enum CompassPoint {
    case north
    case south
    case east
    case west
}
var directionToHead = CompassPoint.south
directionToHead = .east
switch directionToHead {
case .north:
    print("Lot's of planet have north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
////Practical- 2
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}
////Practical -3------------------ Enumeration Cases -----------------------------------------------------------------------------------//
enum Beverages: CaseIterable {
    case tea, coffee, juice
}
let numberOfChoices = Beverages.allCases.count
print("\(numberOfChoices) option available for beverages")
for item in Beverages.allCases {
    print(item)
}
////Practical-4----------------------------------- Associated Values ----------------------------------------------------------------------//
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(12, 32144, 87899, 1)
productBarcode = Barcode.qrCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
case .upc(let numberSystem, let manufacture, let product, let check):
    print("UPC: \(numberSystem),\(manufacture), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
////Practical-5-------------------------------------Raw Values -----------------------------------------------------------------------------////
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
////---------------------------- Function in Enum --------------------------------------------------------------------------------------------////
enum SomEnum: String {
    case bar = "Climbing Bars"
    func add(no1: Int, no2: Int) -> Int {
        return no1 + no2
    }
}
let resAdd = SomEnum.bar.add(no1: 123, no2: 321)
print(resAdd)
////------------------------------------- Function and Startic constants in enum -----------------------------------------------------////
enum Place: String {
    case
    park = "park",
    pool = "swimming pool",
    bars = "climbing bars",
    track1 = "running track",
    track2 = "walking track"
    static let facilities = [park, bars, track1, track2]
    func enumFunction() -> Int {
        return 123
    }
    func enumChoiceFunction() -> String {
        switch self {
        case .track1, .track2:
            return "Running or walking"
        case .park:
            return "Childrens are playing in the park"
        default:
            return "enjoying nature"
        }
    }
}
let work = Place.bars.enumFunction()
let rawVal = Place.park.rawValue
let choice = Place.park.enumChoiceFunction()
var res = ""
for am in Place.facilities {
    res = res + am.rawValue + ", "
}
print(res)
//// ---------------------------------------------- Assigning raw values ------------------------------------------------------------------////
enum PlanetOne: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
var plan = PlanetOne.saturn.rawValue
////-------------------------------------------------------------- Initilize from raw values -------------------------------------------------////
let possiblePlaet = PlanetOne(rawValue: 7)
print(possiblePlaet ?? 0)
//
let positionTofind = 3
if let somePlanet = PlanetOne(rawValue: positionTofind) {
    switch somePlanet {
    case .earth:
        print("Mostly Harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionTofind)")
}
//// -------------------------------------------------------------------- Recursive Enumerations ----------------------------------------////
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(five, four)
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
////==================================== Structure and classes =============================////
struct Resolution {
    var width = 100
    var height = 200
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
////----------------------------------------------------- Sructure and Class instances ---------------------------------------------------////
let someResolution = Resolution()
let someVideoMode = VideoMode()
////------------------------------------------------------ Accessing Properties ------------------------------------------------------------////
print("The width of someResolution is \(someResolution.width)")
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
////----------------------------------- Memberwise Initializers for Structure Types--------------------------------------------------////
let vga = Resolution(width: 640, height: 480)
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("Cinema is now \(cinema.width) pixel wide")
print("HD is still \(hd.width) pixel wide")
//
enum CompassPointOne {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirections = CompassPointOne.west
let rememberedDirection = currentDirections
currentDirections.turnNorth()
print("The current direction is \(currentDirections)")
print("The remembered direction is \(rememberedDirection)")
////----------------------------------------------------- Classes Are Reference Types -------------------------------------------------////
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("the frameRate propety of tenEighty is now \(tenEighty.frameRate)")
////--------------------------------------------------- Identity Operators --------------------------------------------------------------------////
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
//// ===================================== Other Programs ================================////
struct Album {
    let title: String
    let artist: String
    let year: Int
    func printSummary() {
        print("\(title)(\(year)) by \(artist)")
    }
}
let genreOne = Album(title: "Fearless", artist: "Eminem", year: 2012)
genreOne.printSummary()
////
struct Employee {
    let name: String
    var vacationRemaining = 14
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I am going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remainig.")
        }
    }
}
var empOne = Employee(name: "Sterling", vacationRemaining: 22)
empOne.takeVacation(days: 20)

struct EmployeeOne {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
var archer = EmployeeOne(name: "Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated )
////
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3
game.score += 1
////
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
