import UIKit
////========================================== Initialization=========================================////
////------------------------------------------------------------------------- Initializers ----------------------------------------------------------------------------////
//struct Fahrehiet {
//    var temperature: Double
//    init() {
//        temperature = 32
//    }
//}
//var fer = Fahrehiet()
//fer.temperature
//print("The temperature is \(fer.temperature)")
////
//class Temp {
//    var cel: Double
//    init(cel: Double) {
//        self.cel = (cel * 9/5) + 32
//    }
//}
//var convertCelTOFer = Temp(cel: 33)
//print(convertCelTOFer.cel)
////-------------------------------------------------------------------------- Default Property Values --------------------------------------------------------////
//struct FahrenHeit {
//    var temp = 32.0
//}
//var som = FahrenHeit()
//som.temp
////------------------------------------------------------------------------- Initialization Parameters ---------------------------------------------------------////
//struct Celsius {
//    var tempInCel: Double
//    init(fromFar far: Double) {
//        tempInCel = (far - 32) / 1.8
//    }
//    init(fromKel Kelvin: Double) {
//        tempInCel = Kelvin - 273.15
//    }
//}
//let bolOfWater = Celsius(fromFar: 212.0)
////
//class AddOperation {
//    var noOne: Int = 0
//    var noTwo: Int = 0
//    var sum: Int {
//        return self.noOne + self.noTwo
//    }
//}
//var operat = AddOperation()
//operat.noOne = 123
//operat.noTwo = 321
//print(operat.sum)
//
////------------------------------------------------------- Parameter Names and Argument Labels ---------------------------------------------------////
//struct Color {
//    let red, green, blue: Double
//    init(red:Double, green: Double, blue: Double){
//        self.red = red
//        self.green = green
//        self.blue = blue
//    }
//    init(white: Double) {
//        red = white
//        green = white
//        blue = white
//    }
//}
//let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
//let halfGrey = Color(white: 0.5)
//print(magenta)
////-----------------------------------------------------  Initializer Parameters Without Argument Labels ---------------------------------------------////
//struct Celsiusz {
//    var temperatureInCelcius: Double
//    init(fromFahrenheit farHit: Double) {
//        temperatureInCelcius = (farHit - 32.0) / 1.8
//    }
//    init(fromKelvin kelvin: Double) {
//        temperatureInCelcius = kelvin - 273.15
//    }
//    init(_ celcius: Double) {
//        temperatureInCelcius = celcius
//    }
//}
//let bodyTemperature = Celsiusz(37.0)
////-------------------------------------------------------------------  Optional Property Types -------------------------------------------------------------////
//class SurveyQuestion {
//    var text: String
//    var response: String?
//    init(text: String) {
//        self.text = text
//    }
//    func ask() {
//        print(text)
//    }
//}
//let cheseQes = SurveyQuestion(text: "Do you like cheese?")
//cheseQes.ask()
//cheseQes.response = "Yes, very much"
//print(cheseQes.response ?? "")
////--------------------------------------------------------  Assigning Constant Properties During Initialization --------------------------------------////
//class SurQues {
//    let text: String
//    var response: String?
//    init(text: String) {
//        self.text = text
//    }
//    func ask() {
//        print(text)
//    }
//}
//let betQues = SurQues(text: "How about beets?")
//betQues.ask()
//betQues.response = "I did not like beets "
//print(betQues.response)
////
//class Ser {
//    var qes: String
//    var qesResp: String?
//    init(qes: String) {
//        self.qes = qes
//    }
//    func ask() {
//        print(qes)
//    }
//}
//let qesAsk = Ser(qes: "Is the work done or not?")
//qesAsk.ask()
//print(qesAsk.qesResp ?? "There is no response for it")
////------------------------------------------------------------------------------ Default Initializers -----------------------------------------------------------////
//class ShoppingListItem {
//    var name: String?
//    var quantity = 1
//    var purchases = false
//}
//var item = ShoppingListItem()
//item.name = "Vari"
//print(item.name ?? "")
////--------------------------------------------------------- Memberwise Initializers for Structure Types ------------------------------------------------////
//struct Size {
//    var width = 0.0, heigth = 0.0
//}
//let twoByTwo = Size(width: 2.0, heigth: 2.0)
//let zeroByTwo = Size(heigth: 2.0)
//print(zeroByTwo.width, zeroByTwo.heigth)
//let zeroByZero = Size()
//print(zeroByZero.width, zeroByZero.heigth)
////MARK: Initializer Delegation for Value Types
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Point {
//    var x = 0.0, y = 0.0
//}
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    init(origin: Point, size: Size) {
//        self.origin = origin
//        self.size = size
//    }
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: Point(x: originX, y: originX), size: size)
//    }
//}
//let basicRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
//let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
////
//class Vehicle {
//    var numberOfWheels = 0
//    var description: String {
//        return "\(numberOfWheels) wheel(s)"
//    }
//}
//var callVeh = Vehicle()
//print(callVeh.description)
//let vehical = Vehicle()
//print("Vehicle: \(vehical.description)")
////
//class Bicycle: Vehicle {
//    override init() {
//        super.init()
//        numberOfWheels = 2
//    }
//}
//let bicycle = Bicycle()
//print("Bicycle: \(bicycle.description)")
//class Hoverboard: Vehicle {
//    var color: String
//    init(color: String) {
//        self.color = color
//    }
//    override var description: String {
//        return "\(super.description) in a beautiful \(color)"
//    }
//}
//let hoverboard = Hoverboard(color: "Silver")
//print("Hoverboard: \(hoverboard.description)")
////
//class Food {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    convenience init() {
//        self.init(name: "[Unnamed]")
//    }
//}
//let namedMeat = Food(name: "Bacon")
//print(namedMeat.name)
//let mystertyMeat = Food()
//print(mystertyMeat.name)
////
//class RecipeIngrediants: Food {
//    var quantity: Int
//    init(name: String, quantity: Int) {
//        self.quantity = quantity
//        super.init(name: name)
//    }
//    override convenience init(name: String) {
//        self.init(name: name, quantity: 1)
//    }
//}
//let oneMysterItem = RecipeIngrediants()
//print(oneMysterItem.quantity)
//let oneBacon = RecipeIngrediants(name: "Bacon")
//print(oneBacon.name)
//let sixEggs = RecipeIngrediants(name: "Eggs", quantity: 6)
//print(sixEggs.quantity)
////
//class ShoppingListItems: RecipeIngrediants {
//    var puchased = false
//    var description: String {
//        var output = "\(quantity) x \(name)"
//        output += puchased ? " /" : " x"
//        return output
//    }
//}
//var breakFastList = [
//    ShoppingListItems(),
//    ShoppingListItems(name: "Bacon"),
//    ShoppingListItems(name: "Eggs", quantity: 6),
//]
//breakFastList[0].name = "Orange juice"
//breakFastList[0].puchased = true
//for item in breakFastList {
//    print(item.description)
//}
////------------------------------------------------------------------------- Failable Initializers ---------------------------------------------------------------////
//let wholeNumber: Double = 12345.0
//let pi = 3.14159
//if let valueMaintained = Int(exactly: wholeNumber) {
//    print("\(wholeNumber) conversion to Int maintians value of \(valueMaintained)")
//}
//let valueChanged = Int(exactly: pi)
//if valueChanged == nil {
//    print("\(pi) conversion to Int doesn't maintain value")
//}
////
//struct Animal {
//    let species: String
//    init?(species: String) {
//        if species.isEmpty { return nil }
//        self.species = species
//    }
//}
//let someCreature = Animal(species: "Giraffe")
//if let giraffe = someCreature {
//    print("An animal was initaited with a species of \(giraffe.species)")
//}
//let anonymousCreature = Animal(species: "")
//if anonymousCreature == nil {
//    print("The anonymous creature couldn't be initialized")
//}
////------------------------------------------------------------ Failable Initializers for Enumerations -----------------------------------------------------////
//enum TemperatureUnit {
//    case kelvin, celcius, faremheit
//    init?(symbol: Character) {
//        switch symbol {
//        case "K":
//            self = .kelvin
//        case "C":
//            self = .celcius
//        case "F":
//            self = .faremheit
//        default:
//            return nil
//        }
//    }
//}
//let farenheit = TemperatureUnit(symbol: "F")
//if farenheit != nil {
//    print("This is a defined temperature unit, so initailization succeeded")
//} else if farenheit == nil {
//    print("THe number is nil")
//}
////--------------------------------------------------- Failable Initializers for Enumerations with Raw Values ----------------------------------------////
//enum TemperatureUnit: Character {
//case kelvin = "K", celsius = "C", fahrenheit = "F"
//}
//let fahrenheitUnit = TemperatureUnit(rawValue: "F")
//if fahrenheitUnit != nil {
//    print("This is a defined temperature unit, so initilizrion succeded")
//}
//let unknownUnit = TemperatureUnit(rawValue: "X")
//if unknownUnit == nil {
//    print("This isn't defined temperature unit, so initlization failed")
//}
////---------------------------------------Propagation of Initialization Failure-------------------------------------------------------------------------------////
//class Product {
//    let name: String
//    init?(name: String) {
//        if name.isEmpty { return nil }
//        self.name = name
//    }
//}
//class CartItem: Product {
//    let quantity: Int
//    init?(name: String, quantity: Int) {
//        if quantity < 1 { return nil }
//        self.quantity = quantity
//        super.init(name: name)
//    }
//}
//if let twoSocks = CartItem(name: "sock", quantity: 2) {
//    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
//}
//if let zeroShirt = CartItem(name: "Shirt", quantity: 0) {
//    print("Item: \(zeroShirt.name), quantity: \(zeroShirt.quantity)")
//} else {
//    print("Unable to intilize zero shirt")
//}
//if let onUnnamed = CartItem(name: "", quantity: 1) {
//    print("Item: \(onUnnamed.name), quantity: \(onUnnamed.quantity)")
//} else {
//    print("unable to initilize one unnamed product")
//}
////--------------------------------------------------------- Overriding a Failable Initializer ----------------------------------------------------------------////
//class Documents {
//    var name: String?
//    init() {}
//    init?(name: String) {
//        if name.isEmpty { return nil }
//        self.name = name
//    }
//}
//class AutomaticallyNamedDocument: Documents {
//    override init() {
//        super.init()
//        super.name = "[Untitled]"
//    }
//    override init(name: String) {
//        super.init()
//        if name.isEmpty {
//            self.name = "[Untitled]"
//        } else {
//            self.name = name
//        }
//    }
//}
//class UnititlesDocument: Documents {
//    override init() {
//        super.init(name: "[Untitled]")!
//    }
//}
//let name = AutomaticallyNamedDocument(name: "[Untitled]")
//print(name.name!)
//let somName = UnititlesDocument()
//print(somName.name!)
////--------------------------------------------------------------------- Required Initializers ------------------------------------------------------------------////
//class SomeClass {
//    required init() {
//    }
//}
//class SomeSubClass: SomeClass {
//    required init() {
//
//    }
//}
////---------------------------------------------- Setting a Default Property Value with a Closure or Function -------------------------------------////
//struct Chessboard {
//    let boardColors: [Bool] = {
//        var temporaryBoard: [Bool] = []
//        var isBlack = false
//        for i in 1...8 {
//            for j in 1...8 {
//                temporaryBoard.append(isBlack)
//                isBlack = !isBlack
//            }
//            isBlack = !isBlack
//        }
//        return temporaryBoard
//    }()
//    func squareIsBlackAt(row: Int, column: Int) -> Bool {
//        return boardColors[(row * 8) + column]
//    }
//}
//let board = Chessboard()
//print(board.squareIsBlackAt(row: 0, column: 1))
//print(board.squareIsBlackAt(row: 7, column: 7))
////---------------------------------------------------- Initialezer Practice -------------------------------------------------------------------------------------////
//class Wall {
//    var length: Double
//    init(){
//        length = 5.5
//        print("The was is created")
//        print("The length of wall is \(length)")
//    }
//}
//var checkWall  = Wall()
//
//class NameAndAge {
//    var name: String
//    var age: Int
//    init() {
//        name = "Tirth"
//        age = 20
//        print("The person name is \(name) and age is \(age)")
//    }
//}
//var nameandAge = NameAndAge()
////
//class Wall {
//    var length: Double
//    init(length: Double) {
//        self.length = length
//    }
//}
//var wallCheck = Wall(length: 12.12)
////
//class Wall {
//    var length: Double
//    var bredth: Double
//    init(length: Double, bredth: Double){
//        self.length = length
//        self.bredth = bredth
//    }
//    func calculateArea() -> Double {
//        return length * bredth
//    }
//}
//var area = Wall(length: 12, bredth: 5)
//area.calculateArea()
////========================================= Initializer Overloading ==================================////
//class Person {
//    var age: Int
//    init() {
//        age = 20
//    }
//    init(age: Int) {
//        self.age = age
//    }
//    func getAge() -> Int {
//        return age
//    }
//}
//var perAge = Person()
//print(perAge.age)
//perAge.age = 11
//print(perAge.getAge())
//var per = Person(age:  14)
//print(per.getAge())
////
//class University {
//    var name: String
//    var rank: Int
//    init(name: String, rank: Int) {
//        self.name = name
//        self.rank = rank
//    }
//    convenience init() {
//        self.init(name: "Anyone University", rank: 1)
//    }
//}
//var checkRank = University()
//checkRank.rank
////
//class File {
//    var folder: String
//    init?(folder: String) {
//        if folder.isEmpty {
//            print("Folder Not found")
//            return nil
//        }
//        self.folder = folder
//    }
//}
//var file = File(folder: "")
//if file != nil {
//    print("File found sucessfully")
//} else {
//    print("Erroe finding file")
//}
//struct Person {
//    var name: String
//    var age: Int
//}
//var paerson1 = Person(name: "name", age: 20)
//print(paerson1)
//struct PersonOne {
//    var name: String
//    var age: Int
//}
//var pers = PersonOne(name: "Wright", age: 88)
//print(pers)
////---------------------------------------------------------------------------------------------- Practice --------------------------------------------------------------------------//
//class Food {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    convenience init() {
//        self.init(name: "[Unnamed]")
//    }
//}
//var somFod = Food()
//print(somFod.name)
//class FoodOfSea {
//    var foodName: String
//    init(name: String) {
//        self.foodName = name
//    }
//    convenience init() {
//        self.init(name: "[Unamed]")
//    }
//}
//let someFod = FoodOfSea()
//someFod.foodName = "Person"
//print(someFod.foodName)
//class University {
//    var name: String
//    var rank: String
//    init(name: String, rank: String) {
//
//    }
//}
//
//class University {
//    var name: String
//    var rank: Int
//    init(name: String, rank: Int) {
//        self.name = name
//        self.rank = rank
//    }
//    convenience init(){
//        self.init(name: "IIT Gandhinager", rank: 1)
//    }
//}
//var checkFun = University()
//checkFun.name
//checkFun.rank
//checkFun.name = "DDU"
//checkFun.rank = 2
//print(checkFun.name, checkFun.rank)
////
//class UserForm {
//    var personName: String?
//    var age: Int
//    var gender: String?
//    var mobileNo: Int
//    var emailId: Any?
//    init(personName: String?, age: Int, gender: String?, mobileNo: Int, emailId: Any?) {
//        self.personName = personName
//        self.age = age
//        self.gender = gender
//        self.mobileNo = mobileNo
//        self.emailId = emailId
//    }
//    convenience init() {
//        self.init(personName: "", age: 0, gender: "", mobileNo: 9999999999 , emailId: "")
//    }
//}
//let userOne = UserForm()
//print(userOne.personName ?? "", userOne.age, userOne.gender ?? "", userOne.mobileNo, userOne.emailId ?? "")
//let userTwo = UserForm()
//userTwo.emailId = "user"
//userTwo.mobileNo = 86952505203
//userTwo.gender = "Male"
//userTwo.age = 44
//userTwo.personName = "userTwo"
//print(userTwo.personName!, userTwo.age, userTwo.gender!, userTwo.mobileNo, userTwo.emailId!)
//
//class Animal {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//class Dog: Animal {
//    var owner: String
//    init(name: String, owner: String) {
//        self.owner = owner
//        super.init(name: name)
//    }
//}
//let trevor = Dog(name: "Trevor", owner: "Dave")
//print(trevor.name, trevor.owner)
////
//class File {
//    var folder: String
//    init?(folder: String) {
//        if folder.isEmpty {
//            print("The folder not found")
//            return nil
//        }
//        self.folder = folder
//    }
//}
//var file = File(folder: "")
//if (file != nil) {
//    print("File Found Successfully")
//} else {
//    print("Error Finding File")
//}
//
//class Race {
//    var laps: Int
//    init() {
//    laps = 5
//    print("Race Completed")
//        print("Total laps:", laps)
//    }
//    deinit {
//        print("Memory Deallocated")
//    }
//}
//var result: Race? = Race()
//result = nil
//result?.laps
////------------------------------ Designeted and convenience initalizers ----------------------------//
//class Person {
//    var name: String
//    var networth: Int?
//    var gender: String?
//    init() {
//        name = "None"
//    }
//    convenience init(_ gender: String, _ netWorth: Int) {
//        self.init()
//        self.gender = gender
//        self.networth = networth
//    }
//}
//let a = Person()
//let b = Person("Male", 85989787967)
//let c = Person("Female", 9638592516854)
////--------------------------------------------------------------- Failable initializer-----------------------------------------------------------------------------////
//struct Version {
//    let major: Int
//    let minor: Int
//    let patch: Int
//    init?(string: String) {
//        let numbers = string.components(separatedBy: ".").compactMap({ Int($0) })
//        guard numbers.count >= 3 else {
//            return nil
//        }
//        self.major = numbers[0]
//        self.minor = numbers[1]
//        self.patch = numbers[2]
//    }
//}
//func go() {
//    let version1 = Version(string: "a.b.c")
//    guard let version2 = Version(string: "32.12.17") else {
//        return
//    }
//    guard let version3 = Version(string: "23.1.44.23") else {
//        return
//    }
//    print(version3)
//    print(version2)
//    print(version1 ?? "Not valid version name")
//}
//go()
//--------------------------------- Computed property can be overrided --------------------//
//class Cricket {
//        var score = 0
//        var hitSix: Int {
//        score += 6
//            return score
//    }
//}
//class Six: Cricket {
//    override var hitSix: Int {
//        score += 4
//        return score
//    }
//}
//var hitsixscore = Six()
//print(hitsixscore.hitSix)
//print(hitsixscore.hitSix)
//print(hitsixscore.hitSix)
////
//class Mage {
//    var spellPower: Int?
//    var physicalPower: Int?
//    init() {
//        spellPower = 4
//        physicalPower = 11
//    }
//}
//class Witch: Mage {
//    var charm: Int
//    override init() {
//        charm = 3
//        super.init()
//        physicalPower = 22
//
//    }
//}
//var witchName = Witch()
//witchName.physicalPower
////
//class Person {
//    let awake: Bool
//    let eating: Bool
//    let sleeping: Bool
//    init(awake: Bool, eating: Bool, sleeping: Bool) {
//        self.awake = awake
//        self.eating = eating
//        self.sleeping = sleeping
//        if self.awake && self.eating {
//            print("Awake and eating is possible")
//        }
//    }
//}
//var callPerson = Person(awake: true, eating: true, sleeping: true)
//print(callPerson.eating)
////
//class Animal {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//class Dog: Animal {
//    var owner: String
//    init(name: String, owner: String) {
//        self.owner = owner
//        super.init(name: name)
//    }
//}
//let tevor = Dog(name: "Trevor", owner: "Dave")
//print(tevor.name, tevor.owner)
//
////--------------------------------------------------------------------------- Deinitialization -------------------------------------------------------------------////
//class Bank {
//    static var coinsInBank = 10_000
//    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
//        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
//        coinsInBank -= numberOfCoinsToVend
//        return numberOfCoinsToVend
//    }
//    static func recive(coins: Int) {
//        coinsInBank += coins
//    }
//}
//class Player {
//    var coinsInPurse: Int
//    init(coins: Int) {
//        coinsInPurse = Bank.distribute(coins: coins)
//    }
//    func win(coins: Int) {
//        coinsInPurse += Bank.distribute(coins: coins)
//    }
//    deinit {
//        Bank.recive(coins: coinsInPurse)
//    }
//}
//var playerOne: Player? = Player(coins: 100)
//print("A new player has joined the game with \(playerOne!.coinsInPurse)")
//print("There are now \(Bank.coinsInBank) coins left in the bank")
//playerOne!.win(coins: 2_000)
//print("PlayerOne won 2000 coins and now has \(playerOne!.coinsInPurse) coins")
//print("The bank now only has \(Bank.coinsInBank) coins left")
//playerOne = nil
//print("PlayerOne has left the game")
//print("The bank now has \(Bank.coinsInBank) coins")
////
//class Race {
//    var laps: Int
//    init() {
//        laps = 5
//        print("race completed")
//        print("Total laps:", laps)
//    }
//    deinit {
//        print("Memory Deallocated")
//    }
//}
//var result: Race? = Race()
//result = nil
////
/////
//class Mage {
//    var spellPower: Int?
//    var physicalPower: Int?
//    init() {
//        spellPower = 4
//    }
//}
//class ChildMage: Mage {
//    var charm: Int?
//    override init() {
//        super.init()
//        physicalPower = 2
//        charm = 3
//        spellPower = 12
//    }
//}
//var nam = ChildMage()
//nam.spellPower
//
//class User {
//    let id: Int
//    init(id: Int) {
//        self.id = id
//        print("User \(id):  I'a alive")
//    }
//
//    deinit {
//        print("User \(id): I'm dead")
//    }
//}
//var users: [User] = []
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I am is control")
//    users.append(user)
//}
//print("Loop is finished")
//users.removeAll()
//print("Array is clear!")
////
//class Person {
//    var name = "John Henry"
//    init() {
//        print("The person name is \(name)")
//    }
//    func printGreetin() {
//        print("Hello, I'm \(name)")
//    }
//    deinit {
//        print("The name is no more \(name)")
//    }
//}
//for _ in 1...3 {
//    let per = Person()
//    per.printGreetin()
//}
////------------------------ Deinitializer is called when the same instance is modified -----//
//class NameSurname {
//    var firstName: String
//    var lastName: String
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        print("The person first name is \(firstName) and last name is \(lastName)")
//    }
//    deinit {
//        print("The name is removed")
//    }
//}
//var perNa = NameSurname(firstName: "Bhuvan", lastName: "Banana")
//perNa = NameSurname(firstName: "ceaf", lastName: "efinfea")
//perNa = NameSurname(firstName: "Surya", lastName: "Kumar")
////----------------------------------------------------------- required Initializer -----------------------------//
//class Animal {
//    var petAnimal: String
//    required init(petAnimal: String) {
//        self.petAnimal = petAnimal
//    }
//}
//class Pet: Animal {
//    required init(petAnimal: String) {
//        super.init(petAnimal: petAnimal)
//        print(petAnimal)
//
//    }
//}
//var pet = Pet(petAnimal: "Dog")
//print(pet.petAnimal)
////
//class Polygon {
//    var points: [CGPoint]
//    init(points: [CGPoint]) {
//        self.points = points
//    }
//    convenience init(squareWithLength length: CGFloat) {
//    let points = [
//        CGPoint(x: 0, y: 0),
//        CGPoint(x: length, y: 0),
//        CGPoint(x: length, y: length),
//        CGPoint(x: 0, y: length),
//    ]
//        self.init(points: points)
//    }
//
//}
//var callPoints = Polygon(squareWithLength: 2)
//print(callPoints.points)
//
//class Person {
//    let awake: Bool
//    let eating: Bool
//    let sleeping: Bool
//    init(awake: Bool, eating: Bool, sleeping: Bool) {
//        self.awake = awake
//        self.eating = eating
//        if self.awake && self.eating {
//            print("Awake and eating is impossibel")
//        }
//        self.sleeping = sleeping
//    }
//}
////
//class Person {
//    let awake: Bool
//    let eating: Bool
//    let sleeping: Bool
//    init(awake: Bool, eating: Bool, sleeping: Bool) {
//        self.awake = awake
//        if self.awake {
//            print("Awake")
//        }
//        self.eating = eating
//        if self.eating {
//            print("Eating")
//        }
//        self.sleeping = sleeping
//    }
//}
//var per = Person(awake: true, eating: true, sleeping: false)
//class Wall {
//    var length: Double
//    init(length: Double) {
//        self.length = length
//    }
//}
//var wall1 = Wall(length: 10.5)
////
//class file {
//    var name: String
//    init?(name: String) {
//        if name.isEmpty {
//            print("the file name is empty")
//        }
//        self.name = name
//    }
//}
//let callName = file(name: "someName")
//if let callName {
//    print(callName.name)
//}
////
//struct Celcius {
//    var  temInCel: Double
//    init() {
//        print("Something")
//        temInCel = 0.0
//    }
//    init(formFar far: Double) {
//        temInCel = (far - 32) / 1.8
//    }
//    init(fromKel kelvin: Double) {
//        temInCel = kelvin - 273.15
//    }
//}
//Celcius(formFar: 2)
//let no = Celcius()
//no.temInCel
////
//class SurveyQuestion {
//    var text: String
//    var response: String?
//    init(text: String) {
//        self.text = text
//    }
//    func ask() {
//        print(text)
//    }
//}
//let soQes = SurveyQuestion(text: "What you name?")
//soQes.ask()
//soQes.response = "my name is harry. what's your name?"
//print(soQes.response ?? "")
//
////
//class Vehical {
//    var numberOfWheels = 0
//    var description: String {
//        return "\(numberOfWheels) whells"
//    }
//}
//let veh = Vehical()
//veh.numberOfWheels = 12
//veh.description
//class Car: Vehical {
//    override init() {
//        super.init()
//        numberOfWheels = 4
//    }
//}
//var ca = Car()
//ca.description
