import UIKit
//------------------------------------- Collection Types ---------------------------------------//
//==================== Set===================//
//var somset: Set<Int> = [1, 3, 12, 1234, 12]
////print(somset.sorted())
//var soOtheret = somset.sorted()
//print(soOtheret)
//===================== Array =========================//
//var somArr:[Int] = Array(repeating: 2, count: 2)
//print(somArr)
//print(somArr.insert(2, at: 0))
//var somOther = somArr
//print(somOther)
//var someList: [String] = Array(repeating: "Name", count: 5)
//print(someList)
//
//var someInt: [Int] = []
//print(someInt.count)
//someInt.append(22)
//someInt.append(133)
//someInt.append(23)
//print(someInt)
//someInt = Array(repeating: 1, count: 11)
//print(someInt)
//print(someInt)
//
//var threeZero = Array(repeating: 0.0, count: 3)
//print(threeZero)
//var someTwos = Array(repeating: 2.5, count: 3)
//var sumOfTwo = threeZero + someTwos
//
//var nameString = Array(repeating: "person", count: 3)
//var someOther = Array(repeating: "Name", count: 3)
//var someOfSum = nameString + someOther
//print(someOfSum)
//
//var someDoubles = Array(repeating: 1.11, count: 3)
//var someInt = Array(repeating: 123, count: 3)
//var someOther = someInt.map {Double($0)}
//print(someOther)
////var someArr = [Double](someInt)
//var somInts = [1, 2, 34, 123, 12345]
//var somIntToDouble = someInt.map{Double($0)}
//print(somIntToDouble)
//
//var shoppingList: [String] = ["Eggs", "Milk"]
//print(shoppingList.count)
//if shoppingList.isEmpty {
//    print("The list is empty")
//}
//else {
//    print("The list is not empty")
//}
//shoppingList.append("flour")
//shoppingList += ["baking powder"]
//shoppingList += ["Chocolate spread", "Cheese", "Butter"]
//var firstItem = shoppingList[0]
//shoppingList[0] = "Six egg"
////print(shoppingList)
//shoppingList[4...6] = ["bananas", "apples"]
////print(shoppingList)
//shoppingList.insert("Maple syrup", at: 0)
////print(shoppingList)
//let mapleSyrup = shoppingList.remove(at: 0)
////print(mapleSyrup)
//shoppingList[1] = "Milky"
////print(shoppingList)
//let apple = shoppingList.removeLast()
////print(apple)
//for items in shoppingList {
// //   print(items)
//}
//for (index, value) in shoppingList.enumerated() {
//   // print("The index is \(index) and value is \(value)")
//}
//let arr = Array(1...5).filter { $0 % 2 == 0 }
//print(arr)
//var somSetPrime = Set(arr)
//
//var somNoPrime: Set = [2, 3, 5, 7, 11, 13, 17, 19 ]
//var somNoeven: Set = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
//var oddNo: Set = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
//somNoeven.intersection(somNoPrime)
//somNoPrime.intersection(oddNo)
//((somNoPrime.union(somNoeven).union(oddNo)).subtracting(somNoPrime)).sorted()
//somNoeven.union(oddNo)
//var letters = Set<Character>()
//print(letters.count)
//letters.insert("A")
//letters = []
//print(letters)
//
//var favGenre: Set<String > = ["Rock", "Classical", "Hip Hop"]
//print("I have \(favGenre.count) in fav geners")
//if favGenre.isEmpty {
//    print("the list is empty")
//}
//else {
//    print("The list is not empty")
//}
//favGenre.insert("Tool J")
//print(favGenre)
//if let removeRock = favGenre.remove("Rock") {
//    print("\(removeRock) is removed ")
//} else {
//    print("I did not care")
//}
//if favGenre.contains("funk") {
//    print("I get up on the good foot")
//} else {
//    print("It's too funky in here")
//}
////
//for genere in favGenre {
//    print(genere)
//}
//========================================= Set operations =====================================//
//let oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let primeNumbers: Set = [2, 3, 5, 7]
//print(oddDigits.union(evenDigits).sorted())
//print(oddDigits.intersection(evenDigits).sorted())
//print(oddDigits.subtracting(primeNumbers).sorted())
//print(oddDigits.symmetricDifference(primeNumbers).sorted())
//
//let houseAnimals: Set = ["🐶", "🐱"]
//var farmAnimals: Set = ["🐮", "🐔", "🐑","🐶", "🐱","🐱"]
//let cityAnimals: Set = ["🐦", "🐭"]
//farmAnimals.remove("🐔")
//var sheep = farmAnimals[farmAnimals.index(farmAnimals.startIndex, offsetBy: 3)]
//farmAnimals.remove(at: farmAnimals.startIndex)
//((cityAnimals.union(farmAnimals)).subtracting(farmAnimals)).isSubset(of: houseAnimals)
//houseAnimals.isSubset(of: farmAnimals)
//farmAnimals.isSubset(of: houseAnimals)
//farmAnimals.isSubset(of: cityAnimals)
//farmAnimals.isSuperset(of: houseAnimals)
//houseAnimals.isSuperset(of: farmAnimals)
//houseAnimals.isStrictSuperset(of: farmAnimals)
//houseAnimals.isStrictSuperset(of: farmAnimals)
//farmAnimals.isSuperset(of: houseAnimals)
//houseAnimals.isSuperset(of: farmAnimals)
//farmAnimals.isStrictSuperset(of: houseAnimals)
//cityAnimals.isSubset(of: farmAnimals)
//farmAnimals.isSuperset(of: houseAnimals)
//houseAnimals.isSuperset(of: farmAnimals)
//houseAnimals.isStrictSuperset(of: houseAnimals
//var somList = [1, 234, 1, 1, 33, 11, 1111, 1, 111]
//print(somList)
//var somOther = Set(somList)
//print(somOther)
//============================================= Dictionary =====================================//
//var someNameList: [Int: String] = [:]
//var airports: [String: String] = ["YYZ": "Toronto Peaarson", "Dub": "Dublin"]
//print(airports)
//print(airports.count)
//if airports.isEmpty {
//    print("The airport is empty.")
//} else {
//    print("The airport is not empty")
//}
//airports["LHR"] = "London"
//airports["LHR"] = "london heathrow"
//print(airports)
//if let oldValue = airports.updateValue("Dublin Airport", forKey: "Dub") {
//    print(oldValue)
//}
//if let airportName = airports["Dub"] {
//    print("The name of the airport is \(airportName)")
//} else {
//    print("That aiport isn't in the airport dictionary.")
//}
//airports["APL"] = "Apple Internationals"
//airports["APL"] = nil
//print(airports)
//if let removedValue = airports.removeValue(forKey: "Dub") {
//    print("The removed airport is \(removedValue)")
//} else {
//    print("The aiport is not removed")
//}
//for (code, Name) in airports {
//    print("\(code): \(Name)")
//}
//for aipo in airports.keys {
//    print(aipo)
//}
//for aipoval in airports.values {
//    print(aipoval)
//}
//let aipooerArr = [String](airports.keys)
//let aipValAe = Array(airports.values)
//================================== Function ==================================================//
//function with input and output parameter
//func gree(ge: String) -> String {
//        return "Hello again," +  ge + "person"
//}
//gree(ge: "name")
//gree(ge: "Name")
//func perAge(per: Int) {
//    let perAge =  per
//    print("The person age is \(perAge)")
//    return
//}
//perAge(per: 3)
//func greeting(perso: [String: Any?]) {
//    guard let perNam = perso["Name"] else {
//        print("Enter the person name")
//        return
//    }
//    guard let perAge = perso["Age"] else {
//        print("Enter the person age")
//        return
//    }
//    print("The name of person is \(perNam ?? "Name not entered") and age is \(perAge ?? "Age not entered")")
//}
//greeting(perso: ["Name": "Tirth", "Age": 123])
//Function with no perameter
//func sayHelloWorld() -> String {
//    return "hello, world"
//}
//print(sayHelloWorld())
//
//func someRanNumbers() -> Int {
//    return 1234567890
//}
//print(someRanNumbers())
//
//Function with no retun value type
//func greet(person: String) {
//    print("Hello, \(person)")
//}
//greet(person: "Name")
//func printAndCount(string: String) -> Int {
//    print(string)
//    return string.count
//}
//func printWithoutCounting(string: String) {
//    let _ = printAndCount(string: string)
//}
//printAndCount(string: "hello, world")
//printAndCount(string: "hello, world")
//printWithoutCounting(string: "hello, world")
//
//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in 0..<array.count {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//
//    }
//    return (currentMin, currentMax)
//}
//
//print(minMax(array: [1, 123, 12, 11, 44, 22]))
//
//func minMax(arr: [Int]) -> (min : Int, max: Int) {
//    var currentMin = arr[0]
//    var currentMax = arr[0]
//    for value in arr[0..<arr.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//print(minMax(arr: [1, 111, 1123, 123, 12, 123123, 12312, 12312 , 12321312312]))
//let someMinMax = minMax(arr: [11, 123, 22, 1234, 555, 9999])
//print(someMinMax)
//print("The min in \(someMinMax.min) and the max is \(someMinMax.max)")
//func greetin(for per: String) -> String {
//    "Hello," + per + "!"
//}
//print(greetin(for: "dave"))
//
//func anthGree(for per: String) -> String {
//    return "Hello," + per + "!"
//}
//print(anthGree(for: "dave"))
//======================= Function argumets and peremeters lables =============================//
//func someFunc(firstParametr: Int, secondParameter: Int) {
//    print("The first prameter \(firstParametr) and second parameter \(secondParameter)")
//}
//someFunc(firstParametr: 23, secondParameter: 32)
//
//func greet(person: String, from hometown: String) -> String {
//    return "Hello \(person)! glad you could visit form \(hometown)"
//}
//print(greet(person: "tier", from: "car"))
//
//func somFunction(_ firstParameterName: Int, secondParameterName: Int) {
//    print("The first parameter \(firstParameterName) and second prameter name is \(secondParameterName)")
//}
//somFunction(12, secondParameterName: 23)
//function parameters with defailt value
//func somFunc(prameterWithoutDefault: Int, prameterWithDefault: Int = 12) {
//    print("The parameter without default is \(prameterWithoutDefault) and the parameter with default is \(prameterWithDefault)")
//}
//somFunc(prameterWithoutDefault: 11, prameterWithDefault: 123)
//Variadic Prameters
//func arithmeticMean(_ numbers: Double...) -> Double {
//    var total: Double = 0
//    for num in numbers {
//        total += num
//    }
//    return total / Double(numbers.count)
//}
//arithmeticMean(222.2, 12, 123)
//
//func arthsum(_ num: Double...) -> Double {
//    var total: Double = 0
//    for no in num  {
//        total += no
//    }
//    return total
//}
//arthsum(22.333, 12, 123)
//
//func arithmetiMean(_ numbers: Double...) -> Double {
//    var total: Double = 0
//    for no in numbers {
//        total += no
//    }
//    return total / Double(numbers.count)
//}
//arithmetiMean(1, 12.2, 123, 12.123)
//
//func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//var someInt = 12
//var someIntTwo = 123
//swapTwoInts(&someInt, &someIntTwo)
//print(someIntTwo, someInt)
//func swapTwoInt(_ a: inout Int, _ b: inout Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//var someNoOne = 123
//var someNoTwo = 321
//swapTwoInt(&someNoOne, &someNoTwo)
//func addTwoNo(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//func multiplyTwoNo(_ a: Int, _ b: Int) -> Int {
//    return a * b
//}
//print(addTwoNo(123, 321))
//print(multiplyTwoNo(2, 4))
//
//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepBackward : stepForward
//}
//var currentValue = 3
//let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
//print("Counting to zero:")
//while currentValue != 0 {
//    print("\(currentValue)...")
//    currentValue = moveNearerToZero(currentValue)
//}
//print("Zero!")

//func chooseStepFun(backward: Bool) -> (Int) -> Int {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backward ? stepBackward : stepForward
//}
//var currentValue = -4
//let moveNearerToZero = chooseStepFun(backward: currentValue > 0)
//while currentValue != 0 {
//    print("\(currentValue)")
//    currentValue = moveNearerToZero(currentValue)
//}
//print("zero!")
//
//func minMax(someArr: [Int]) -> (min: Int, max: Int)? {
////    if someArr.isEmpty { return nil }
//    var currentMin = someArr[0]
//    var currentMax = someArr[0]
//    for indx in someArr[1..<someArr.count] {
//        if indx < currentMin {
//            currentMin = indx
//        } else if indx > currentMax {
//            currentMax = indx
//        }
//    }
//    return (currentMin, currentMax)
//}
//var somName = minMax(someArr: [1, 12, 123, 1234, 1245])
//if let somName {
//    print(somName)
//}
//=========================== 27 Mar===========================//
//===================== Variadic parameter ===================//
//func totalOfNos(nos: Int...) -> Int {
//    var total = 0
//    for nos in nos {
//        total += nos
//    }
//    return total
//}
//
//totalOfNos(nos: 1, 12, 3)
//
//func numbersMean(no: Double...) -> Double {
//    var total: Double = 0
//    for no in no {
//        total += no
//    }
//    return total / Double(no.count)
//}
//numbersMean(no: 1, 123, 1234, 12345)
//
//func meanOfDouble(someNo: Double...) -> Double {
//    var total: Double = 0
//    for someNo in someNo {
//        total += someNo
//    }
//    return total / Double(someNo.count)
//}
//meanOfDouble(someNo: 1, 2, 3, 4, 5)
//
//func swapToNum(a: inout Int, b: inout Int) {
//    let temA = a
//    a = b
//    b = temA
//}
//var somNoOne = 123
//var somNoTwo = 321
//swapToNum(a: &somNoOne, b: &somNoTwo)
//print(somNoOne)
//print(somNoTwo)
//
//func addTwoInt(no1: Int, no2: Int) -> Int {
//    return no1 + no2
//}
//addTwoInt(no1: 123, no2: 321)
//
//func mulTwoInt(noOne: Int, noTwo: Int) -> Int {
//    return noOne * noTwo
//}
//mulTwoInt(noOne: 12, noTwo: 2)
//func addAndMulDouble(noOne: Double, noTwo: Double) -> (Double, Double) {
//    var mul: Double = 0.0
//    var total: Double = 0.0
//    mul = noOne * noTwo
//    total = noOne + noTwo
//    return (mul, total)
//}
//print(addAndMulDouble(noOne: 1.1, noTwo: 2.1))
//var mathFunction: (Int, Int) -> Int = addTwoInt
//print("Result \(mathFunction(2, 4))")
//mathFunction(33, 2)
//
//var mathFunctionTwo: (Int, Int) -> Int = mulTwoInt
//mathFunctionTwo(23, 2)
////
//func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("Result: \(mathFunction(a,b))")
//}
//printMathResult(addTwoInt, 123, 321)
//
//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepBackward : stepForward
//}
//var currentValue = 3
//let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
//print("counting to zero:")
//while currentValue != 0 {
//    print("\(currentValue)...")
//    currentValue = moveNearerToZero(currentValue)
//}
//print("zero!")
//
//func addTwoNo(firstNum no1: Int, secondNumber no2: Int) -> Int {
//    var total = 0
//    total = no1 + no2
//    return total
//}
////addTwoNo(firstNum: 12, secondNumber: 21)
//func add(_ addTwoNo: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("THe res \(addTwoNo(a,b)) ")
//}
//add(addTwoNo, 123, 321)
//
//var someArr = [1, 2, 3, 4, 5]
//let pos = 5
//if someArr.count >= pos {
//    someArr.insert(22, at: pos)
//} else {
//    print("can not be inserted")
//}
//print(someArr)
//
//var someNames = ["nameOne", "nameTwo", "nameThree", "nameFour", "nameFive"]
//var insertAt = 5
//if someNames.count >= insertAt {
//    print(someNames.insert("nameSix", at: insertAt))
//} else {
//    print("Enter the valid position")
//}
//print(someNames)
//func spForward(_ input: Int) -> Int {
//    return input + 1
//}
//func spBackward(_ input: Int) -> Int {
//    return input - 1
//}
//func choseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? spBackward : spForward
//}
//var currentVal = 5
//let moveToZero = choseStepFunction(backward: currentVal > 0)
//print("Counting to zero:")
//while currentVal >= 0 {
//    print("\(currentVal)...")
//    currentVal = moveToZero(currentVal)
//}
//
//func chooseStepFunction(backward: Bool) -> (fn:((Int) -> Int), name: String) {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backward ? (stepBackward, "backward") : (stepForward, "forward")
//}
//chooseStepFunction(backward: false)
//var currentValue = -2
//let moveToZero = chooseStepFunction(backward: currentValue > 0).fn
//while currentValue != 0 {
//    print("\(currentValue)...")
//    currentValue = moveToZero(currentValue)
//}
//func getFunction(_ str: String) -> (Int, Int) -> Int {
//    func sum(a: Int, b: Int) -> Int
//    {
//        return a + b
//    }
//    func difference(a: Int, b: Int) -> Int {
//        return a - b
//    }
//    if str == "+" {
//        return sum
//    }
//    return difference
//}
//
//let f = getFunction("-")
//print(f(23, 12))
//
//func testNested(_ message: String) {
//    print("Outer function")
//    func innerTest() {
//        print("It's inner function", message)
//    }
//    innerTest()
//}
//testNested("India")
//
//func calculations(_ msg: String) -> (Int, Int) -> Int  {
//    func add(a: Int, b: Int)  -> Int {
//        return a + b
//    }
//    func sub(a: Int, b: Int) -> Int {
//        return a - b
//
//    }
//    let checkData = (msg=="add") ? add : sub
//    return checkData
//}
//
//let addop = calculations("add")
//let result = addop(321, 123)
//print(result)
//let subOp = calculations("sub")
//let res = subOp(321, 123)
//print(res)
//
//func testRecursion(_ num: Int) {
//    print("num:", num)
//    if num > 0 {
//        testRecursion(num - 1)
//    }
//}
//testRecursion(2)
//
//func getFactorial(_ num: Int) -> Int {
//    print("num:", num)
//    if num == 1 {
//        return 1
//    } else {
//        return num * getFactorial(num-1)
//    }
//}
//let fact = getFactorial(5)
//print("Factorial is \(fact)")
