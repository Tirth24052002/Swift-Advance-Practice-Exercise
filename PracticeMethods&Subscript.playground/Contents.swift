import UIKit
////================================= Methods ==============================================//
////------------------------------ Instance Methods ----------------------------------------//
//class Counter{
//    var count = 0
//    func increment() {
//        self.count += 1
//    }
//    func increment(by amount: Int) {
//        count += amount
//    }
//    func reset() {
//        count = 0
//    }
//}
//var someNo = Counter()
//someNo.increment()
//someNo.increment()
//someNo.increment(by: 5)
//someNo.reset()
//print(someNo.increment())
//print(someNo.count)
////---------------------------------------------------------------- The self Property --------------------------------------------------------------------------//
//struct Point{
//    var x = 0.0, y = 0.0
//    func isToTheRightOf(x: Double) -> Bool {
//        return self.x > x
//    }
//}
//let somePoint = Point(x: 4.0, y: 5.0)
//if somePoint.isToTheRightOf(x: 1.0) {
//    print("The point is to the right of the line where x == 1.0")
//}
////
//struct PointOne {
//    var x = 0.0 , y = 0.0
//    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//        x += deltaX
//        y += deltaY
//    }
//}
//var somePoint = PointOne(x: 1.0, y: 1.0)
//print(somePoint)
//somePoint.moveBy(x: 2.0, y: 3.0)
//print("The point is now at (\(somePoint.x),\(somePoint.y))")
////--------------------------------------- Modifying Value Types from Within Instance Methods ---------------------------------------------------//
//struct GraphPoint {
//    var a = 0, b = 0
//    mutating func moveTo(a xmove: Int, b ymove: Int) {
//        a += xmove
//        b += ymove
//    }
//}
//var gPoint = GraphPoint(a: 1, b:  1)
//print(gPoint)
//gPoint.moveTo(a: 10, b: 10)
//print(gPoint)
//var somPoin = GraphPoint(a: 11, b: 11)
//print(somPoin)
//somPoin.moveTo(a: 1, b: 1)
////------------------------------------------- Assigning to self Within a Mutating Method --------------------------------------------------------------//
//struct Point {
//    var x = 0, y = 0
//    mutating func moveBy(x deltaX: Int, y deltaY: Int) {
//        self = Point(x: x + deltaX, y:  y + deltaY)
//    }
//}
////
//enum TriStateSwitch {
//    case off, low, high
//    mutating func next() {
//        switch self {
//        case .off:
//            self = .low
//        case .low:
//            self = .high
//        case .high:
//            self = .off
//        }
//    }
//}
//var ovenLight = TriStateSwitch.off
//ovenLight.next()
//ovenLight.next()
//ovenLight.next()
////
//enum somCarGear {
//    case one, two, three, four, five, six, neutral
//    mutating func nextGear() {
//        switch self {
//        case .one:
//            self = .two
//        case .two:
//            self = .three
//        case .three:
//            self = .four
//        case .four:
//            self = .five
//        case .five:
//            self = .six
//        case .six:
//            self = .neutral
//        case .neutral:
//            self = .one
//        }
//    }
//}
//var gearSwift = somCarGear.neutral
//gearSwift.nextGear()
//print(gearSwift)
////-------------------------------------------------------------- Type Methods ---------------------------------------------------------------------------------//
//class SomeClass {
//    class func someTypeMethod() {
//
//    }
//}
//SomeClass.someTypeMethod()
////
//struct LevelTracker {
//    static var highestUnlockedLevel = 1
//    var currentLevel = 1
//    static func unlock(_ level: Int) {
//        if level > highestUnlockedLevel { highestUnlockedLevel = level }
//    }
//    static func isUnlocked(_ level: Int) -> Bool {
//        return level <= highestUnlockedLevel
//    }
//    @discardableResult
//    mutating func advance(to level: Int) -> Bool {
//        if LevelTracker.isUnlocked(level) {
//            currentLevel = level
//            return true
//        } else {
//            return false
//        }
//    }
//}
//class Player {
//    var tracker = LevelTracker()
//    let playerName: String
//    func complete(level: Int) {
//        LevelTracker.unlock(level + 1)
//        tracker.advance(to: level + 1)
//    }
//    init(name: String) {
//        playerName = name
//    }
//}
//var player = Player(name: "Argyrios")
//player.complete(level: 1)
//print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
////
//player = Player(name: "Beto")
//if player.tracker.advance(to: 6) {
//    print("Player is now on level 6")
//} else {
//    print("Level 6 hasn't yet been unlocked")
//}
////--------------------------------- Methods Practice -------------------------------------//
//class Person {
//    func greet() {
//        print("hi! there")
//    }
//}
//var nick = Person()
//nick.greet()
////
//class Hall {
//    var length = 0.0, bredth = 0.0, height = 0.0
//    func calculate() {
//        print("Area of hall = ", length * bredth)
//    }
//    func calculateVlolume() {
//        print("Volume of hall = ", length * bredth * height)
//    }
//}
//var hallOne = Hall()
//hallOne.length = 12
//hallOne.bredth = 6
//hallOne.height = 3
//hallOne.calculate()
//hallOne.calculateVlolume()
////
//class Calculator {
//    func mulitply(numOne: Int, numTwo: Int) -> Int {
//        return numOne * numTwo
//    }
//    static func add(numOne: Int, numTwo: Int) -> Int {
//        return numOne + numTwo
//    }
//}
//var num = Calculator()
//var mul = num.mulitply(numOne: 22, numTwo: 4)
//print(mul)
//Calculator.add(numOne: 123, numTwo: 321  )
////
//var physics = 0
//func checkEligiblity(physics: Int) {
//
//}
////
//class Marks {
//    var physics = 0
//    func checkEligiblity(physics: Int) {
//        if(self.physics < physics) {
//            print("Not eligible for admission")
//        }
//        else {
//            print("Eligible for admission")
//        }
//    }
//}
//var marksCheck = Marks()
//marksCheck.physics = 36
//marksCheck.checkEligiblity(physics: 35)
//
//struct Employee {
//    var salary = 0
//    mutating func salaryIncrement(increase: Int) {
//        salary = salary + increase
//        print("Increased Salary:", salary)
//    }
//}
//var emp = Employee()
//emp.salary = 20000
//emp.salaryIncrement(increase: 50000)
////--------------------------------------------------------------------------- Subscripts --------------------------------------------------------------------////
//struct TimesTable {
//    let multiplier: Int
//    subscript(index: Int) -> Int {
//        return multiplier * index
//    }
//}
//let threeTimesTable = TimesTable(multiplier: 3)
//
//print("six times three is \(threeTimesTable[6])")
////
//var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
//numberOfLegs["bird"] = 2
//print(numberOfLegs)
//let arr = Array(1...5)
//arr[1]
////-------------------------------------------------------------------- Subscript Usage -----------------------------------------------------------------------//
//struct Matrix {
//    let rows: Int, columns: Int
//    var grid: [Double]
//    init(rows: Int, columns: Int) {
//        self.rows = rows
//        self.columns = columns
//        grid = Array(repeating: 0.0, count: rows * columns)
//    }
//    func indexIsValid(row: Int, column: Int) -> Bool {
//        return row >= 0 && row < rows && column >= 0 && column < columns
//    }
//    subscript(row: Int, column: Int) -> Double {
//        get {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            return grid[(row * columns) + column]
//        }
//        set {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            grid[(row * columns) + column] = newValue
//        }
//    }
//}
//var matrix = Matrix(rows: 2, columns: 2)
//matrix[0, 0] = 1.5
//matrix[1, 0] = 3.2
//print(matrix)
//let someValue = matrix[1, 0]
////---------------------------------------------------------------------------- Type Subscripts ----------------------------------------------------------------//
//enum Planet: Int {
//case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
//    case defaultOne = 0
//    static subscript(n: Int) -> Planet {
//        return Planet(rawValue: n) ?? defaultOne
//    }
//}
//let mars = Planet[4]
//print(mars)
//Planet[7]
////------------------------------------------------------------------------- Practice Subscript -----------------------------------------------------------------//
//class daysOfWeek {
//    private var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
//    subscript(index: Int) -> String {
//        get {
//            return days[index]
//        }
//        set(newValue) {
//            self.days[index] = newValue
//        }
//    }
//}
//var p = daysOfWeek()
//p[2]
//p[5]
//class dayOfWeek {
//    static var days = ["Sunday", "Monday", "Tuesday", "Wedesday", "Thursday", "Friday", "Saturday"]
//    static subscript(index: Int) -> String {
//        get {
//            return days[index]
//        }
//        set(newValue) {
//            days[index] = newValue
//        }
//    }
//}
//dayOfWeek[2]
//
//class EvenOdd {
//    subscript(no: Int) -> String {
//        if no % 2 == 0 {
//            return "The number is even"
//        } else {
//            return "The number is odd"
//        }
//    }
//}
//var noCheck = EvenOdd()
//noCheck[2]
////
//class LeapYearCheck {
//    subscript(year: Int) -> String {
//        if year % 4 == 0 {
//            return "The year is the leap year"
//        } else {
//            return "The year is not the leap year"
//        }
//    }
//}
//var year = LeapYearCheck()
//year[2023]
////
//struct Overloading {
//    subscript(name: String) -> String {
//        return String(name.reversed())
//    }
//    subscript(str: String) -> Int {
//        return str.count
//    }
//}
//var ol = Overloading()
//var count: Int = ol["name"]
//var reverse: String = ol["mango"]
////
//struct TimesTable {
//    let multiplier: Int
//    subscript(number: Int) -> Int {
//        return number * multiplier
//    }
//}
//let sevenTimesTable = TimesTable(multiplier: 7)
//print("\(sevenTimesTable[1])")
//print("\(sevenTimesTable[2])")
//print("\(sevenTimesTable[3])")
//print("\(sevenTimesTable[4])")
//
//struct Grid {
//    let grid = [
//    [1, 1, 1, 1],
//    [2, 2, 2, 2],
//    [3, 3, 3, 3],
//    [4, 4, 4, 4],
//    ]
//    subscript(row: Int, col: Int) -> Int? {
//        let maxcol = grid.count - 1
//        guard col < maxcol, col >= 0 else {
//            return nil
//        }
//        let rowNumber = grid[col]
//        guard row >= 0, row < (rowNumber.count-1) else {
//            return nil
//        }
//        let number = grid[col][row]
//        return number
//    }
//}
//let myGrid = Grid()
//print("Grid Value: \(myGrid[1, 1] ?? -1)")
//print("Grid Value: \(myGrid[12, 1] ?? -1)")
//class Circle {
//    var radius = 0.0
//    var areaOfCircle: Double {
//        return 3.14 * radius * radius
//    }
//}
//var somRad = Circle()
//somRad.radius = 5
//somRad.areaOfCircle
//MARK: Method Practice
//struct User {
//    let name: String
//    func sayHello() -> String {
//        "Hello, \(name)"
//    }
//    static func createUser(with name: String) -> User {
//        User(name: name)
//    }
//}
//let john = User.createUser(with: "John")
//print(john.sayHello())
//
//class Book {
//    let title: String
//    let author: String
//    init(title: String, author: String) {
//        self.title = title
//        self.author = author
//
//    }
//    static func favorites() -> [Book] {
//        [
//            Book(title: "LOTr", author: "Tolkien")
//        ]
//    }
//    class func moreFavorites() -> [Book] {
//        [
//            Book(title: "The Hobbit", author: "Tolkien")
//        ]
//    }
//}
////Book.favorites()
////var fun = Book.moreFavorites()
////
//class FantasyBook: Book {
////
//    override class func moreFavorites() -> [Book] {
//        [
//            Book(title: "The book of lost tales", author: "Tolkien")
//        ]
//    }
//}
//FantasyBook.moreFavorites()
//
//class emp {
//    var salary = 15000
//    func increment(increase: Int) -> Int {
//        salary =  salary + increase
//        return salary
//    }
//}
//var empOne = emp()
//empOne.increment(increase: 123)
