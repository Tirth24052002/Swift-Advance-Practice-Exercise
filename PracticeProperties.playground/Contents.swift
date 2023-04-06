import UIKit
////=================================== Properties ====================================//
////---------------------------------------------- Stored Properties ------------------//
//struct FixedLengthRange {
//    var firstValue: Int
//    let length: Int
//}
//var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
//rangeOfThreeItems.firstValue = 6
////
//struct SomStr {
//    var firVal: Int
//    var legth: Int
//}
//var somS = SomStr(firVal: 0, legth: 5)
//somS.firVal = 1
////--------------------------- Stored Properties of Constant Structure Instances -----//
//let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 10)
////---------------------------- Lazy Stored Properties -------------------------------//
//class DataImporter {
//    var fileName = "data.txt"
//}
//class DataManager {
//    lazy var importer = DataImporter()
//    var data: [String] = []
//}
//let manager = DataManager()
//manager.data.append("Some Data")
//manager.data.append("Some more data")
//print(manager.data)
//print(manager.importer.fileName)
////
//class DataImpor {
//    var filNam = "file.txt"
//}
//class DataMan {
//    lazy var impor = DataImpor()
//    var val: [String] = []
//}
//let na = DataMan()
//na.val.append("Person")
//na.val.append("Name")
//print(na.val)
//print(na.impor.filNam)
////-------------------------------- Computed Properties ------------------------------//
//struct Point {
//    var x = 0.0, y = 0.0
//}
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            let centerX = origin.x + (size.width / 2)
//            let centerY = origin.y + (size.height / 2)
//            return Point(x: centerX, y: centerY)
//        }
//        set(newCenter) {
//            origin.x = newCenter.x - (size.width / 2)
//            origin.y = newCenter.y - (size.height / 2)
//        }
//    }
//}
//var square = Rect(origin: Point(x: 0.0, y: 0.0),
//size: Size(width: 10.0, height: 10.0))
//let initialSquareCenter = square.center
//square.center = Point(x: 15.0, y: 15.0)
//print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
////CLASS AND STRUCTURE DIFFERENCE: Reference and value Type difference
//struct ABC {
//    var someName = "sun"
//}
//var sonOth = ABC()
//sonOth.someName = "moon"
//print(sonOth.someName)
//
//var someOth = sonOth
//someOth.someName = "Stars"
//print(someOth.someName)
//print(sonOth.someName)
////
//struct SomPoint {
//    var x = 0.0 , y = 0.0
//}
//struct SomSize {
//    var height = 0.0, width = 0.0
//}
//struct SomRect {
//    var origin = SomPoint()
//    var size = SomSize()
//    var center: SomPoint {
//        get {
//            let centerX = origin.x + (size.width / 2)
//            let centerY = origin.y + (size.height / 2)
//            return SomPoint(x: centerX, y:  centerY)
//        }
//        set(newCenter) {
//            origin.x = newCenter.x - (size.width / 2)
//            origin.y = newCenter.y - (size.height / 2)
//        }
//    }
//}
//var squareOne = SomRect(origin: SomPoint(x: 0.0, y: 0.0),
//                     size: SomSize(height: 10.0, width: 10.0))
//let initialSquareCenterOne = squareOne.center
//squareOne.center = SomPoint(x: 15.0, y: 15.0)
//print("square.origin is now at (\(squareOne.origin.x), \(squareOne.origin.y))")
////-------------------------------- Shorthand Setter Declaration ---------------------//
//struct AlternativeRect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            let centerX = origin.x + (size.width / 2)
//            let centerY = origin.y + (size.height / 2)
//            return Point(x: centerX, y: centerY)
//        }
//        set {
//            origin.x = newValue.x - (size.width / 2)
//            origin.y = newValue.y - (size.height / 2)
//        }
//    }
//}
////------------------------------------ Shorthand Getter Declaration -----------------//
//struct CompactRect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            Point (x: origin.x + (size.width / 2),
//                   y: origin.y + (size.height / 2))
//        }
//        set {
//            origin.x = newValue.x - (size.width / 2)
//            origin.y = newValue.y - (size.height / 2)
//        }
//    }
//}
////------------------------------ Read-Only Computed Properties ----------------------//
//struct Cuboid {
//    var width = 0.0, height = 0.0, depth = 0.0
//    var volume: Double {
//        return width * height * depth
//    }
//}
//let fourByFiveByTwo = Cuboid(width: 4.5, height: 5.1, depth: 2.2)
//print("The volume is \(fourByFiveByTwo.volume)")
////
//struct Cylinder {
//    var radius = 0.0 , height = 0.0
//    var volume: Double {
//        return 3.14 * radius * radius * height
//    }
//}
//var somValues = Cylinder(radius: 2, height: 5)
//print("The volume of the cylinder is \(somValues.volume)")
////
//class ABCONE {
//    var length = 0, bredth = 0
//    var volume: Int {
//        return length * bredth
//
//    }
//    init(length: Int, bredth: Int) {
//        self.length = length
//        self.bredth = bredth
//    }
//}
//var vol = ABCONE(length: 12, bredth: 2)
//print(vol.volume)
//vol.length = 12
//vol.bredth = 5
//print(vol.volume)
//
//var range = 0...5
//var i = range.makeIterator()
//while let i = i.next() {
//    print(i)
//}
////----------------------------- Property Observers ----------------------------------//
//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet(newTotalSteps) {
//            print("About to set totalSteps to \(newTotalSteps)")
//        }
//        didSet {
//            if totalSteps > oldValue {
//                print("Added \(totalSteps - oldValue) steps")
//            }
//        }
//    }
//}
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//stepCounter.totalSteps = 360
//stepCounter.totalSteps = 896
////------------------------------- Property Wrappers ---------------------------------//
//@propertyWrapper
//struct NonNegative {
//    private var number = 0
//    var wrappedValue: Int {
//        get { return number }
//        set { number = max(newValue, 0)}
//    }
//}
////------------------------------ Property Wrappers Implementation -------------------//
//struct NameOne {
//    @NonNegative var somInt: Int
//    @NonNegative var somIntTwo: Int}
//var getVal = NameOne()
//getVal.somInt = -21
//getVal.somIntTwo = 12
//print(getVal.somInt)
//print(getVal.somIntTwo)
////
//@propertyWrapper
//struct TwelveOrLess: CustomStringConvertible {
//    var description: String {
//        "\(number)"
//    }
//
//    private var number = 0
//    var wrappedValue: Int {
//        get { return number }
//        set { number = min(newValue, 12)}
//    }
//
//
//}
//struct SmallRectangle {
//    @TwelveOrLess var height: Int
//    @TwelveOrLess var width: Int
//}
//var rectangle = SmallRectangle()
//print(rectangle.height)
//rectangle.height = 10
//print(rectangle.height)
//rectangle.height = 24
//print(rectangle.height)
////
//struct SmallRectangleOne {
//    private var _height = TwelveOrLess()
//    private var _width = TwelveOrLess()
//    var height: Int {
//        get { return _height.wrappedValue }
//        set { _height.wrappedValue = newValue }
//    }
//    var width: Int{
//        get { return _width.wrappedValue }
//        set { _width.wrappedValue = newValue}
//    }
//}
//var oneTwoTree = SmallRectangleOne()
//oneTwoTree.height = 11
//oneTwoTree.width = 10
//print(oneTwoTree)
////------------------------ Setting Initial Values for Wrapped Properties ------------//
//@propertyWrapper
//struct SmallNumber {
//    private var maximum: Int
//    private var number: Int
//    var wrappedValue: Int {
//        get { return number }
//        set { number = min(newValue, maximum)}
//    }
//    init() {
//        maximum = 12
//        number = 0
//    }
//    init(wrappedValue: Int) {
//        maximum = 12
//        number = min(wrappedValue, maximum)
//    }
//    init(wrappedValue: Int, maximum: Int) {
//        self.maximum = maximum
//        number = min(wrappedValue, maximum)
//    }
//}
//var somFun = SmallRectangle()
//somFun.height = 1
//somFun.width = 3
//print(somFun)
////
//struct ZeroRectangle {
//    @SmallNumber var height: Int
//    @SmallNumber var width: Int
//}
//var zeroRectangle = ZeroRectangle()
//print(zeroRectangle.height, zeroRectangle.width)
////
//struct UnitRectangle {
//    @SmallNumber var height: Int = 1
//    @SmallNumber var width: Int = 1
//}
//var unitRectangle = UnitRectangle()
//print(unitRectangle.height, unitRectangle.width)
////
//struct NarrowRectangle {
//    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
//    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
//}
//var narrowRectangle = NarrowRectangle()
//print(narrowRectangle.height, narrowRectangle.width)
//narrowRectangle.height = 100
//narrowRectangle.width = 100
//print(narrowRectangle.height, narrowRectangle.width)
////
//struct MixedRectangle {
//    @SmallNumber var height: Int = 1
//    @SmallNumber(maximum: 9) var width: Int = 2
//}
//var mixedRectangle = MixedRectangle()
//print(mixedRectangle.height)
//mixedRectangle.height = 20
//print(mixedRectangle.height)
//////
//struct Employee {
//    let name: String
//    var vactionAllocated = 14
//    var vacationTaken = 0
//
//    var vacationRemainig: Int {
//        get {
//            vactionAllocated - vacationTaken
//        }
//        set {
//            vactionAllocated = vacationTaken + newValue
//        }
//    }
//}
//var archer = Employee(name: "sterlig Archer", vactionAllocated:  14)
//archer.vacationTaken += 4
//archer.vacationRemainig = 5
//print("THe vacation remainaing is \(archer.vactionAllocated)")
//print(archer.vactionAllocated)
////
//struct Game {
//    var score = 0 {
//        didSet {
//            print("Score is now: \(score)")
//                print("Score was before: \(oldValue)")
//        }
//    }
//}
//var gameScore = Game()
//gameScore.score += 10
//gameScore.score += 2
//gameScore.score += 6
//gameScore.score -= 11
////
//struct App {
//    var dataArr: [String] = [] {
//        willSet {
//            print("Current value is: \(dataArr)")
//            print("New value will be: \(newValue)")
//        }
//        didSet {
//            print("The no of strings is \(dataArr.count)")
//            print("The old value was \(oldValue)")
//        }
//    }
//}
//var aapMap = App()
//aapMap.dataArr.append("NameOne")
//aapMap.dataArr.append("NameTwo")
//aapMap.dataArr.append("NameThree")
////
//class University {
//    static var name: String = ""
//    var founded: Int = 0
//}
//var obj = University()
//University.name = "Some University"
//print(University.name)
//obj.founded = 2000
//print(obj.founded)
////-----------------------------------------------------------------------------------//
//struct Person {
//    var clothes: String {
//        willSet {
//            updateUI(msg: "I am changing from \(clothes) to \(newValue)")
//        }
//        didSet {
//            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
//        }
//    }
//}
//func updateUI(msg: String){
//    print(msg)
//}
//var somNam = Person(clothes: "T-shirt")
//somNam.clothes = "Shirt"
//////
//struct PersonNa {
//    var age: Int
//    var ageInDogYears: Int {
//        get {
//            return age * 7
//        }
//    }
//}
//var fun = PersonNa(age: 2)
//print(fun.ageInDogYears)
////
//struct currnecyMult {
//    var indianRupee: Int
//    var udDoller: Int {
//        get {
//            return indianRupee / 80
//        }
//    }
//}
//var concvert = currnecyMult(indianRupee: 200)
//concvert.udDoller
////---------------------------- Class practice --------------------------------------//
//class Developer {
//    var name: String
//    var jobTitle: String
//    var yearsExp: Int
//    init(name: String, jobTitle: String, yearsExp: Int) {
//        self.name = name
//        self.jobTitle = jobTitle
//        self.yearsExp = yearsExp
//    }
//    func inttroduceYourself() {
//        print("Hi! My name is \(name) and I am \(jobTitle) with \(yearsExp) years of experiance")
//    }
//}
//class iosDeveloper: Developer {
//    var favoriteFramwork: String?
//    func speakFavoritFramework() {
//        print(favoriteFramwork ?? "I don't have a favorite framework")
//    }
//}
//let saw = iosDeveloper(name: "saw", jobTitle: "Ios Dev", yearsExp: 5)
//saw.favoriteFramwork = "Xcode"
//saw.favoriteFramwork
////================================ Projecting a Value From a Property Wrapper =======//
//@propertyWrapper
//struct SmallNumber {
//    private var number: Int
//    private(set) var projectedValue: Bool
//    var wrappedValue: Int {
//        get { return number }
//        set {
//            if newValue > 12 {
//                number = 12
//                projectedValue = true
//            } else {
//                number = newValue
//                projectedValue = false
//            }
//        }
//    }
//    init() {
//        self.number = 0
//        self.projectedValue = false
//    }
//}
//struct SomeStructure {
//    @SmallNumber var someNumber: Int
//}
//
//var someStructure = SomeStructure()
//someStructure.someNumber = 4
//print(someStructure.$someNumber)
//someStructure.someNumber = 55
//print(someStructure.$someNumber)
//someStructure.someNumber = 12
//print(someStructure.$someNumber)
//
//enum Size {
//    case small, large
//}
//struct SizedRectangle {
//    @SmallNumber var height: Int
//    @SmallNumber var width: Int
//    mutating func resize(to size: Size) -> Bool {
//        switch size {
//        case .small:
//            height = 10
//            width = 20
//        case .large:
//            height = 100
//            width = 100
//        }
//        return $height || $width
//    }
//}
////----------------------------------- private(set) usage ----------------------------//
//struct Car {
//    let model: String
//    let seats: Int
//    private(set) var gear = 1
//    mutating func changeGear(difference: Int) {
//        let newGear = gear + difference
//        if newGear > 1 && newGear <= 10 {
//            gear = newGear
//        }
//    }
//}
//var car = Car(model: "BMW X3", seats: 5)
//car.changeGear(difference: 1)
//print(car.gear)
//car.changeGear(difference: 2)
//print(car.gear)
//car.changeGear(difference: 3)
//print(car.gear)
//var cag = Car(model: "som", seats: 2, gear:  24)
//print(cag.gear)
////--------------------------------------- Lazy keyword pracial and use --------------//
//struct Calculator {
//    static func calculateGamesPLayed() -> Int {
//        var games: [Int] = []
//        for i in 1...4_000 { games.append(i) }
//        return games.last ?? 0
//    }
//}
//struct Player {
//    var name: String
//    var team: String
//    var position: String
//    lazy var gamesPlayed = {
//        return Calculator.calculateGamesPLayed()
//    }()
//    lazy var introduction = {
//        return "Now entering the game: \(name), \(position) for the \(team)"
//    }()
//}
//var jordan = Player(name: "Michal Jordan", team: "Bulls", position: "Shooting Guard")
//print(jordan.introduction)
//print(jordan.gamesPlayed)
////---------------------------------- Static usage and practical ---------------------//
//struct Video {
//    let creator = "Saw Melon"
//    var title: String
//    var viewCount: Int
//}
//let swiftNews = Video(title: "Swift News", viewCount: 5000)
//let vlog = Video(title: "My Contracts", viewCount: 7000)
//let tutorial = Video(title: "UITableView Tutorial", viewCount: 10000)
//tutorial.creator
////-------------------------------------- Type Property Syntax -----------------------//\
//struct SomeSturcture {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 1
//    }
//}
//enum SomeEnumeration {
//    static var storedTypeProperty = "Some value"
//    static var computedTypeProperty: Int {
//        return 6
//    }
//}
//class SomeClass {
//    static var storedTypeProperty = "Some value"
//    static var computedTypeProperty: Int {
//        return 27
//    }
//    class var overrideableComputedTypeProperty: Int {
//        return 107
//    }
//}
//var accessSomeClass = SomeClass()
//SomeClass.storedTypeProperty = "no value"
//print(SomeClass.computedTypeProperty)
////--------------------------------- Querying and Setting Type Properties -------------//
//print(SomeClass.storedTypeProperty)
//SomeSturcture.storedTypeProperty = "Another value"
//print(SomeSturcture.storedTypeProperty)
//print(SomeEnumeration.computedTypeProperty)
//print(SomeClass.computedTypeProperty)
//
//struct AudioChannel {
//    static let thresholdLevel = 10
//    static var maxInputLevelForAllChannels = 0
//    var currentLevel: Int = 0 {
//        didSet {
//            if currentLevel > AudioChannel.thresholdLevel {
//                currentLevel = AudioChannel.thresholdLevel
//            }
//            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
//                AudioChannel.maxInputLevelForAllChannels = currentLevel
//            }
//        }
//    }
//}
////
//var leftChannel = AudioChannel()
//var rightChannel = AudioChannel()
////
//leftChannel.currentLevel = 7
//print(leftChannel.currentLevel)
//print(AudioChannel.maxInputLevelForAllChannels)
//rightChannel.currentLevel = 11
//print(rightChannel.currentLevel)
//print(AudioChannel.maxInputLevelForAllChannels)
//--------------------------------- Usecase of property wrapper ----------------------//
//@propertyWrapper
//struct UserDefault<Value> {
//    let key: String
//    let defaultValue: Value
//    let container: UserDefaults = .standard
//    var wrappedValue: Value {
//        get {
//            container.object(forKey: key) as? Value ?? defaultValue
//        }
//        set {
//            container.set(newValue, forKey: key)
//        }
//    }
//}
//extension UserDefaults {
//    public enum Keys {
//        static let hasOnboarded = "hasOnboarded"
//    }
//    @UserDefault(key: UserDefaults.Keys.hasOnboarded, defaultValue: false)
//    static var hasOnboarded: Bool
//}
//func shouldShowOnBoardingUI() {
//    if UserDefaults.standard.bool(forKey: "hasOnboareded") {
//        print("the user has on boarded")
//    } else {
//        print("There is not user onboarded")
//    }
//}
////
//class cal {
//    var no1 = 0
//    var no2 = 0
//    var sim: Int {
//        get {
//            no1 + no2
//        }
//        set {
//            print("the mul val will be \(no1 * no2)")
//        }
//    }
//}
//var callCal = cal()
//callCal.no1 = 12
//callCal.no2 = 21
//callCal.sim
//print(callCal.sim)
//
//struct School {
//    static var studentCount = 0
//    static func add(student: String) {
//        print("\(student) joined the school")
//        studentCount += 1
//    }
//}
//School.add(student: "FUÑ")
//School.add(student: "ŠÛÑ")
//School.add(student: "MØØŃ")
//print(School.studentCount)
//
//struct AppData {
//    static let version = "1.3 beta 2"
//    static let saveFilename = "settings.json"
//    static let hommeURL = "https://www.somethingsothing.com"
//}
//struct Employee {
//    let username: String
//    let password: String
//    static let example = Employee(username: "cfcderight", password: "h4irtcone")
//}
////
////
//class SomeClass {
//    class func MathOperations() {
//    }
//}
//class SomOther: SomeClass {
//
//}
//class Int {
//    static func fool() { }
//}
//Int.fool()
//
//@propertyWrapper
//class Animal {var wrappedValue: 0}
//   // class func type() { print("Type: Animal")}
//    func type1() { print("Type: Animal")}
//}
//class Dog: Animal {
//    override class func type() {
//        print("Type: Dog")
//  //      override static func type1() { print("Type: Animal")}
//    }
//}

