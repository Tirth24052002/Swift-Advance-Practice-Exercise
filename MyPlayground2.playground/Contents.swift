import UIKit
//==================================== Closure ========================//
//
//var square = {
//    return 2 * 2
//}
//
//print(square())
//
//func cubeOfNum(entNo: Int) -> Int {
//    return entNo*entNo*entNo
//}
//cubeOfNum(entNo: 2)
//var closure = {(entNo: Int) in return entNo*entNo*entNo }
//print(closure(4))
//
//let somList = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//func backward(_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}
//var back: (String, String)->(Bool) = {(s1, s2) in s1 > s2 }
//var reverseNumber = somList.sorted(by: back)
//print(reverseNumber)
//let addNums:(Int, Int) -> Int = { (no1, no2) in no1 + no2 }
//addNums(123, 321)
//
//var reversedNames = somList.sorted(by: { s1, s2 in  s1 > s2})
//print(reversedNames)
//
//var reversedNames = somList.sorted(by: { $0 > $1 })
//print(reversedNames)
//
//var reversedNames = somList.sorted(by: >)
//print(reversedNames)
//
//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//let numbers = [6123, 18, 0]
//
//let strings = numbers.map { (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = (digitNames[number % 10] ?? "Not there") + output
//        number /= 10
//    } while number > 0
//      return output
//}
//print(strings)
//
//func minMax(somArr: [Int]) -> (min: Int, max: Int) {
//    var curMin = somArr[0]
//    var curMax = somArr[0]
//    for val in somArr[1..<somArr.count] {
//        if curMin > val {
//            curMin = val
//        } else if curMax < val {
//            curMax = val
//        }
//    }
//    return(curMin, curMax)
//}
//print(minMax(somArr: [1, 12, 123, 1234, 12345]))
//
//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five",
//    6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//    ]
//
//let numbers = [1, 12, 123, 1234, 12345]
//
//let string = numbers.map{ (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = (digitNames[number % 10] ?? "Not there") + output
//        number /= 10
//    } while number > 0
//                return output
//}
//print(string)
//
//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five",
//    6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//    ]
//
//let numbers = [1, 12, 123, 1234, 12345]
//
//let Strig = numbers.map{ (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = (digitNames[number % 10] ?? "No no there") + output
//        number /= 10
//    } while number > 0
//                return output
//}
//print(Strig)
//
//func test(){
//}
//func checkTest(one t1: () -> Void,two  t2: () -> Void ){
//    t1(); t2()
//}
//checkTest{print("Hi") }two:{ print("Hello!!!!")}
//
//func makeIncremeter(forIncrementer amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//let incrementByTen = makeIncremeter(forIncrementer: 10)
//incrementByTen()
//incrementByTen()
//incrementByTen()
//incrementByTen()
//incrementByTen()
//let incrementBySeven = makeIncremeter(forIncrementer: 7)
//incrementBySeven()
//incrementBySeven()
//incrementByTen()
//incrementBySeven()
//incrementBySeven()
//let alsoIncrementByTen  = incrementByTen
//alsoIncrementByTen()
//========================================= Escaping Closuers ==================================//
//var completionHandlers: [() -> Void] = []
//func someFunctioniWithEscapingClosure(completionHandler: @escaping () -> Void) {
//    completionHandlers.append(completionHandler)
//}
//func someFunctioniWithNoneEscapingClosure(closure: () -> Void) {
//    closure()
//}
//class someClass {
//    var x = 10
//    func doSometing() {
//        someFunctioniWithEscapingClosure { self.x = 100 }
//        someFunctioniWithNoneEscapingClosure { x = 200 }
//    }
//}
//let instance = someClass()
//instance.doSometing()
//print(instance.x)
//completionHandlers.first?()
//print(instance.x)
//class someOtherClass {
//    var x = 10
//    func doSomething() {
//        someFunctioniWithEscapingClosure { [self] in x = 100 }
//        someFunctioniWithNoneEscapingClosure { x = 200 }
//    }
//}
//struct somStruct {
//    var x = 10
//    mutating func doSomething() {
//        someFunctioniWithNoneEscapingClosure{ x = 200 }
//       // someFunctioniWithEscapingClosure { x = 100 }
//    }
//}
//============================================= Autoclosure ====================================//
//var customerInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
////print(customerInLine.count)
//let customProvider = { customerInLine.remove(at: 0) }
////print(customerInLine.count)
//print("Now serving \(customProvider())!")
////print(customerInLine.count)
//print(customerInLine)
//func serve(customer customerProvider: () -> String) {
//    print("Now serving \(customerProvider())!")
//}
//serve(customer: { customerInLine.remove(at: 0) } )
//func serve(customer customerProvider: @autoclosure () -> String) {
//    print("Now serving \(customerProvider())!")
//}
//serve(customer: customerInLine.remove(at: 0))
//var customerProviders: [() -> String] = []
//func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
//    customerProviders.append(customerProvider)
//}
//collectCustomerProviders(customerInLine.remove(at: 0))
//collectCustomerProviders(customerInLine.remove(at: 0))
//print("Collected \(customerProviders.count) closures.")
//for customerProvider in customerProviders {
//    print("Now serving \(customerProvider())!")
//}
//==================================== Practical of closures ===================================//
//let birthday = {
//    print("Happy birthday!")
//}
//birthday()
//
//let helloWorld = {
//    print("Hello World!!")
//}
//helloWorld()
//
//let birthday: (String) -> () = { name in
//    print("Happ birthday \(name)")
//}
//birthday("tirth")
//
//let returnVar: (String) -> () = { varName in
//    print("the variable name is \(varName)")
//}
//returnVar("soemName")
//
//let bir: (String) -> () = {
//    print("Hap bir, \($0)!")
//}
//bir("yas")
//
//let greeting: (String, String) -> String = { (time: String, name: String) -> String in
//    return "Good \(time), \(name)!"
//}
//let text = greeting("Mourning", "Arthur")
//print(text)
//
//let greet: (String, String) -> String = { (time: String, name: String) -> String in
//    return "Good \(time) \(name)"
//}
//print(greet("Mourning", "sanjay"))
//
//let greeting: (String, String) -> String = {"Good \($0),\($1)!"}
//let text = greeting("Mourning", "Mohan")
//print(text)
//
//let squared = { $0*$0 }(12)
//print(squared)
//
//let name = "Zaphod"
//let greeting = {
//    print("Don't panic,\(name)")
//}
//greeting()
//
//func addScore(_ points: Int) -> Int {
//    let score = 42
//    let calculte = {
//        return score + points
//    }
//
//    return calculte()
//}
//let value = addScore(11)
//print(value)
//
//func addScore(_ points: Int) -> (Int) -> Int {
//    let score = 123
//    let calculate = { (x: Int) in
//        print(score)
//        return score + points + x
//    }
//    return calculate
//}
//var c = addScore(321)
//print(c(2))
//
//func lengthyTask(completionHandler: (Int) -> Int) {
//    let result = completionHandler(42)
//    print(result)
//}
//lengthyTask(completionHandler: { number in
//    print(number)
//    return 101
//} )
//
//func getUserData(for id: Int) -> String {
//    if id == 1989 {
//        return "Taylor Swift"
//    } else {
//        return "Anonymous"
//    }
//}
//let daat: (Int) -> String = getUserData
//let user = daat(1988)
//print(user)
//
//let sayHello = { (name: String) -> String in
//    "Hi \(name)"
//}
//print(sayHello("printedName"))
//

//var sumTotal = 0
//let priceTotal = { (no: [Int]) -> Int in
//    for no in no {
//        sumTotal += no
//
//    }
//    return sumTotal
//}
//print(priceTotal([1, 2, 3, 4, 5]))
//class ABC {
//        var intTeamp = 1
//        var closureCall: ((Int) -> Void)?
//        func callClosure() {
//                closureCall?(10)
//            }
//}
//class XYZ {
//        func checkClosure() {
//                let abc = ABC()
//                abc.intTeamp = 50
//                abc.closureCall = { intVar in
//                        print("Hello Int", intVar)
//                    }
//                abc.callClosure()
//            }
//}
////
//let xyz = XYZ()
//xyz.checkClosure()
//
//=================================== Closures Programes========================================//
//let divide = {
//    (val1: Int, val2: Int) -> Int in
//    return val1 / val2
//}
//let result = divide(20 , 2)
//print(result)
//
//let multiply = {
//    (noOne: Int, noTwo: Int) -> Int in
//    return noOne * noTwo
//}
//print(multiply(22, 2))
//let res = multiply(100, 2)
//print(res)
//
//var count = [1, -2, 12, -33, 14, 44, -11]
//let decending = count.sorted(by: { n1, n2 in n1 > n2})
//let ascending = count.sorted(by: { n1, n2 in n1 < n2})
//print(decending)
//print(ascending)
//
//let num = [22, 123, 12, -33, -22, 45, 99]
//var sortedNumber = num.sorted(by: {
//    (left: Int, right: Int) -> Bool in
//    return left < right
//})
//let asc = num.sorted(by: <)
//print(asc)
//let des = num.sorted(by: >)
//print(des)
//
//func calcDecrement(forDecrement total: Int) -> () -> Int {
//    var overallDecrement = 100
//    func decrement() -> Int {
//        overallDecrement -= total
//        print(overallDecrement)
//        return overallDecrement
//    }
//    return decrement
//}
//let decrem = calcDecrement(forDecrement: 98)
//decrem()
//decrem()
//
//var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//var customerProviders: [() -> String] = []
//func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
//    customerProviders.append(customerProvider)
//}
//collectCustomerProviders(customersInLine.remove(at: 0))
//collectCustomerProviders(customersInLine.remove(at: 0))
//
//print("Collected \(customerProviders.count) closures.")
//// Prints "Collected 2 closures."
//for customerProvider in customerProviders {
//    print("Now serving \(customerProvider())!")
//}
//
//var things = "Cars"
//let closure = { [things] in
//    print("My thing is \(things)")
//}
//things = "airplanes"
//closure()
//print(things)
//
//var thing = "cars"
//let closure = {
//    print("I love \(thing)")
//}
//thing = "airplanes"
//closure()
//mport UIKit
//class ABC {
//    var intTeamp = 1
//    var closureCall: ((Int) -> Void)?
//    func callClosure() {
//        closureCall?(100)
//    }
//}
//class XYZ {
//    func checkClosure() {
//        let abc = ABC()
//        abc.intTeamp = 50
//        abc.closureCall = { intVar in
//            print("Hello Int", intVar)
//        }
//        abc.callClosure()
//    }
//}
//
//let xyz = XYZ()
//xyz.checkClosure()
//
//class ABC {
//    var closureToCall: ((Int) -> Void)?
//    func callClosure() {
//        closureToCall?(101)
//    }
//}
//class XYZ {
//    func checkClosure() {
//        let abc = ABC()
//        abc.closureToCall = { inVar in
//            print("Hello World No.", inVar)
//        }
//        abc.callClosure()
//    }
//}
//XYZ().checkClosure()
//
let team = ["Gloria", "Suzana", "Piper", "Tiffany", "Tasha"]
//let sortedTeam = team.sorted()
////print(sortedTeam)
////
//func capFirat(nameOne: String, nameTwo: String) -> Bool {
//    if nameOne == "Suzana" {
//        return true
//    } else if nameTwo == "Suzana" {
//        return false
//    }
//    return nameOne < nameTwo
//}
//let capFir = team.sorted(by: capFirat)
//print(capFir)
//
//let somCapFirst = team.sorted {
//    if $0 == "Suzana" {
//        return true
//    } else if $1 == "Suzana" {
//        return false
//    }
//    return $0 < $1
//}
//
//print(somCapFirst)
//
//let reverseTeam = team.sorted { $0 > $1 }
//print(reverseTeam)
//let tonlu = team.filter { $0.hasPrefix("T") }
//print(tonlu)
//let uppercaseTeam = team.map { $0.uppercased() }
//print(uppercaseTeam)
//
//func doimportanWork(first: () -> Void, second: () -> Void, third: () -> Void) {
//    print("About to start first work")
//    first()
//    print("About to start second work")
//    second()
//    print("About to start the third work")
//    third()
//    print("Done!")
//}
//doimportanWork {
//    print("This is first work")
//} second: {
//     print("This is second work")
//} third: {
//     print("This is third work")
//}
//struct Student {
//    let name: String
//    let testScore: Int
//}
//let students = [ Student(name: "Luke", testScore: 88),
//                 Student(name: "Han", testScore: 73),
//                 Student(name: "Leia", testScore: 95),
//                 Student(name: "Chewy", testScore: 78),
//                 Student(name: "Obi-wan", testScore: 65),
//                 Student(name: "Ahsoka", testScore: 86),
//                 Student(name: "Yoda", testScore: 68)
//]
//var topStudentFIlter: (Student) -> Bool = { student in
//    return student.testScore > 80
//}
//func topStudenFilterFun(student: Student) -> Bool {
//    return student.testScore > 70
//}
//let topStudents = students.filter { $0.testScore > 80}
//let studentRanking = students.sorted { $0.testScore > $1.testScore }
//
//for topStudent in topStudents {
//    print(topStudent.name)
//}
//
//var addNos = { (noOne: Int, noTwo: Int) -> Int in
//    var toNo = 0
//    toNo = noOne + noTwo
//    return toNo
//}
//print(addNos(2, 3))
//
//var total = 0
//var mathFunctioninClosure: () -> String = {
////    let add: () -> Int = {
////        total = noOne + noTwo
////        return total
////    }
//
//    let name: String = "Tirth"
//    return name
//}
//mathFunctioninClosure()
//
//var sum = 0
//var addTwoNo: (Int, Int) -> Int = { (no1, no2) in
//    sum = no1 + no2
//    return sum
//}
//print(addTwoNo(123, 321))
//var sum = 0
//func addSomNo(noOne: Int, noTwo: Int) -> () -> (Int) {
//    sum = noOne + noTwo
//    print(sum)
//    let name = { () -> (Int) in
//        let total = noTwo + noTwo
//        return total
//    }
//
//    return name
//}
//addSomNo(noOne: 123, noTwo: 321)
////
//var someNames = [{}, {}, {}]
//func addsum() -> String {
//    var name = "tirth"
//    return name
//}
//someNames.append {
//    addsum()
//}
//print(someNames)
//
//var arrClosure: [() -> ()] = []
//var num = 0
//for _ in 1...3 {
//    arrClosure.append { [num] in
//        print(num, terminator: ", ")
//    }
//    num += 1 //1, 2, 3
//}
//
//arrClosure[0]()
//arrClosure[1]()
//arrClosure[2]()
//
//var tot = 0
