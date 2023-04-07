import UIKit
////MARK: Inheritance
//class Vehicle: CustomStringConvertible {
//    var currentSpeed = 0.0
//    var description: String {
//        return "traveling at \(currentSpeed) miles per hour"
//    }
//    func makeNoise() {
//    }
//}
//let somVeh = Vehicle()
//somVeh.currentSpeed = 44
//print(somVeh)
////MARK: Subclassing
//class Bicycle: Vehicle {
//    var hasBasket = false
//}
//let bic = Bicycle()
//bic.hasBasket
//bic.currentSpeed = 50
//print("Bicycle: \(bic.description)")
//class Tandem: Bicycle {
//    var currentNumberOfPassengers = 0
//}
//let tandem = Tandem()
//tandem.hasBasket = true
//tandem.currentSpeed = 44
//tandem.currentNumberOfPassengers = 2
//print("Tandem: \(tandem.description)")
////MARK: Overriding Methods
//class Train: Vehicle {
//    override func makeNoise() {
//         print("Choo Choo")
//    }
//}
//let train = Train()
//train.makeNoise()
////MARK: Overriding Property Getters and Setters
//class Car: Vehicle {
//    var gear = 1
//    override var description: String {
//        return super.description + " in gear \(gear)"
//    }
//}
//let car = Car()
//car.currentSpeed = 25.0
//car.gear = 3
//print("Car: \(car.description)")
//
//class AutomaticCar: Car {
//    override var currentSpeed: Double {
//        didSet {
//            gear = Int(currentSpeed / 10.0) + 1
//        }
//    }
//}
//let automatic = AutomaticCar()
//automatic.currentSpeed = 29.0
//print("Automatic Car: \(automatic.description)")
////MARK: Practice Inheritance
//class Employee {
//    let hours: Int
//    init(hours: Int) {
//        self.hours = hours
//    }
//    func printSummary() {
//        print("I work for \(hours) hours a day")
//    }
//}
//class Developer: Employee {
//    var empName = "Name"
//    func work() {
//        print("I am writing code for \(hours) hours.")
//    }
//    override func printSummary() {
//        print("I am developer that work for \(hours) hours a day in office work and then doing it from home")
//    }
//}
//final class Manager: Employee {
//    func work() {
//        print("I am going for meetings for \(hours) houres.")
//    }
//}
//let rober = Developer(hours: 8)
//let josepg = Manager(hours: 10)
//rober.work()
//josepg.work()
//josepg.printSummary()
//class Game {
//    var score = 0 {
//        didSet {
//            print("Score is now \(score)")
//        }
//    }
//}
//var newGame = Game()
//newGame.score += 10
////
//class Math {
//    var no1 = 0
//    var no2 = 0
//}
//class MathOperation: Math {
//    func noPrint() {
//        print("Number entered is \(no1) and \(no2)")
//    }
//}
//class AddOperation: MathOperation {
//    func addNos() {
//       print("The sum of \(no1) and \(no2) is \(no1 + no2)")
//    }
//}
//class SubOperation: AddOperation {
//    func subNos() {
//        print("The substraction of \(no1) and \(no2) is \(no1 - no2)")
//    }
//}
//class MulOperation: SubOperation {
//    func mulNos() {
//        print("The multiplication of \(no1) and \(no2) is \(no1 * no2)")
//    }
//}
//class DivOperation: MulOperation {
//    func divNos() {
//        print("The divison of \(no1) and \(no2) is \(no1 / no2)")
//    }
//}
//class AllOperation: DivOperation {
//    func alfun() {
//        noPrint()
//        addNos()
//        subNos()
//        mulNos()
//        divNos()
//    }
//
//    override func divNos() {
//        super.divNos()
//        print("fghjhjghyjughuj")
//    }
//}
//var allOp = AllOperation()
//allOp.no1 = 321
//allOp.no2 = 123
//allOp.alfun()
//allOp.divNos()
////
//class VehicleOne {
//    let isElectric: Bool
//    init(isElectric: Bool) {
//        self.isElectric = isElectric
//    }
//}
//class CarOne: VehicleOne {
//    let isConvertable: Bool
//    init(isElectric: Bool, isConvertable: Bool) {
//        self.isConvertable = isConvertable
//        super.init(isElectric: isElectric)
//    }
//}
//let teslaX = CarOne(isElectric: true, isConvertable: false)
////
//class User {
//    let id: Int
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive")
//    }
//    deinit {
//        print("User \(id): I'm dead")
//    }
//}
//var users = [User]()
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control")
//    users.append(user)
//}
//print("Loop is finished")
//users.removeAll()
//print("Array is clear!")
////
//class Animal {
//    var name: String = ""
//    func eat() {
//        print("I can eat")
//    }
//}
//class Dog: Animal {
//    override func eat() {
//        super.eat()
//        print("I eat food")
//    }
//}
//var labrador = Dog()
//labrador.name = "Rohu"
//labrador.eat()
////
class RegularPolygon {
    func calculatePerimeter(length: Int, sides: Int) {
        var result = length * sides
        print("Perimeter:", result)
    }
}
class RegularSquare: RegularPolygon {
    var length = 0
    var sides = 0
    func calculateArea() {
        var area = length * length
        print("Regular Square Area:", area)
    }
}
class RegularTriangle: RegularPolygon {
    var length = 0.0
    var sides = 0.0
    func calculateArea() {
        var area = (sqrt(3)/4) * (length * length)
        print("Regular Triangle Area:", area)
    }
}
var shape = RegularSquare()
shape.length = 4
shape.calculateArea()
shape.calculatePerimeter(length: 2, sides: 3)
