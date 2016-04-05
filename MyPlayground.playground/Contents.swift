//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("Hello world!")

let myConstant = 42
var myVariable = 16
print("constant by using key word let is \(myConstant)")
print("variable by using key word var is \(myVariable)")
//variable are placed in a string by enclosing in \()
//Rule of thumb: camel case with initial lowercase letter
//no snake case
//no screaming case
//no screaming snake case


//use word 'let' to declare a constant
//use word 'var' to declare a variable
//variable will usually have a default value

//explicit type
var myFloat:Float = 4.0
let explicitlyADouble:Double = 42
var wontwork:String = "hello"
var wontwork2:Any = "hello"
//value representations
Int.min
Int.max
let hex = 0xff
let oct = 0o32
let binary = 0b110011101
let bignum = 1_000_000_000
let 🎄=25

//Playgroound view
import XCPlayground
let newView  = UIView(frame: CGRectMake(0,0,100,100))
newView.backgroundColor = UIColor.redColor()
newView.layer.cornerRadius = 20.0
newView.clipsToBounds = true
XCPlaygroundPage.currentPage.liveView = newView

//more about view
let myLabel = UILabel(frame: CGRect(x: 20, y: 40, width: 100, height: 20))
myLabel.text = "howdy"
newView.addSubview(myLabel)

//Strings
//strings are value types, this means a copy is passed as a parameter

var emptyString = ""
var emptyStringAction = String()
if(emptyString == emptyStringAction) {
    print("these are equal")
}

for Character in "string".characters{
    print(Character)
}

let firstString = "dog"
let secondString = "cow"
var concatenated = firstString + secondString
var spokenString = "moo"
spokenString += secondString
print(spokenString.uppercaseString)
let interesting = "there is a chance to experiment"
print(interesting.stringByReplacingOccurrencesOfString(" ", withString: "."))
//NSString, NS=>next step

//cmp
//if (firstString === secondString) {
//    print("Yes, they are exactly the same object!")
//} else {
//    print("These are different objects")
//}
let period: Character = "."
var sentence = "Place it at the end of this"
sentence.append(period)

let insertValue = 3
let message = "\(insertValue) + itself = \(insertValue + insertValue)"
//counting characters
let unusualMenagerie = "Koala, Snail, Penguin"

let eAcute = "Voulez-vous un caf\u{E9}?"
let comb = "Voulez-vous un caf\u{65}\u{301}?"
if (eAcute == comb) {
    print("Yes, they are exactly the same value!")
}

let theCurrentCurrency = "U. S. Dollar"
if(theCurrentCurrency.hasPrefix("U")) {
    print("U know it")
}

//define a function
func doSomethingUseful(numberToUse: Int) -> String {
    return "I did somethinf useful with \(numberToUse)"
}
print(doSomethingUseful(3))
//define parameters
func functionWithDefault(someParameter : Int = 42) {
    print("I was handed \(someParameter)")
}
functionWithDefault()
functionWithDefault(13)
functionWithDefault(42)
func workWithIntegers(values: Int...) {
    var sum = 0
    for value in values {
        sum += value
    }
    print("\(sum)")
}

func reverseString(inout toReverse: String) {
    toReverse = String(toReverse.characters.reverse())
}
var tmp = "panda"
reverseString(&tmp)
print("\(tmp)")
//return types

//nested function
func getTransformFunction(kind:Int) -> ((Int) -> Int) {
    func transformer(inVal:Int) -> Int {
        return inVal * 2
    }
    return transformer
}
//loop
print("Loop Example")
for index in 1...5 {
    print(index)
}

var x = 0
while x < 5 {
    print(x)
    x += 1
}

var y = 0
repeat {
    print(y)
    y += 1
} while y < 5

var todaysDate = 3
enum Days {case Monday, Tuesday, Wednesday, Thursday, Friday}
var todayDay = Days.Monday
todayDay = .Tuesday
switch todayDay {
case .Monday:
    print("Monday")
case .Tuesday:
    print("Tuesday")
case .Wednesday:
    print("Wednesday")
case .Thursday:
    print("Thursday")
case .Friday:
    print("Friday")
}

//tuples in a switch
let cartesianPoint = (1, -1)
switch cartesianPoint {
    case let (x,y) where x == y:
        print("\(x),\(y): this point is on a line where x == y")
    case let (x,y) where x == -y:
        print("\(x),\(y): this point is on a line where x == -y")
    case let (x,y):
        print("\(x),\(y): this point is not on an interesting line")
}

//Enumerations in Swift
enum Instrument {
    case Guitar(Int)
    case Drum(Double, Double)
}
var eightStringGuitar = Instrument.Guitar(8)

enum Plant: Int {
    case Mercury = 2, Venus, Earth, Mars, Jupiter
}
let opt = Plant.Mars.rawValue

//define array types
var someIntegers = [3,6,8,11]
var someOtherIntegers = [Int]()
var location = [Double](count: 3, repeatedValue: 4)
var initialArray:[Int8] = [0,0,13]
initialArray.append(127)
someIntegers.insert(15, atIndex: 3)
someIntegers.removeLast()
someIntegers.removeAtIndex(0)

for (index, value) in someIntegers.enumerate() {
    print("The index at \(index) is \(value)")
}

//set
var gituarMakers: Set = ["Fender", "Gibson"]
if gituarMakers.isEmpty {
    print("Empty")
}
//Set operators
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersect(evenDigits).sort()
// []
oddDigits.subtract(singleDigitPrimeNumbers).sort()
// [1, 9]
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()
// [1, 2, 9]

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
// true
farmAnimals.isSupersetOf(houseAnimals)
// true
farmAnimals.isDisjointWith(cityAnimals)
// true

//Dictioniary
var namesOfdoctors = [Int: String]()
namesOfdoctors[12] = "Peter"
//Optionals in Swift
var favoriteTVShow: String? = "ACL"
favoriteTVShow = nil
if favoriteTVShow != nil {}
if let favorite = favoriteTVShow {
    //for safety, no ! needed
}

//? : if var has a value, do such and so
//! : I, as a programmer, promise there is a value in this var, do such and so

//clean up using defer
struct Resolution {
    var width: Int
    var height: Int
}
class Television {
    let resolution = Resolution(width: 1920, height: 1280)
    let visibleArea = Resolution(width: 1720, height: 880)
    var channel = 3
}
let tv = Television()
let tvResolution = tv.resolution
//struct is value type
class speed {
    var mph = 0
}
class Automobile{
    var autospeed = speed()
}

//adding a closure as an argument
 print("closure example")
func functonWithAClosure(value: Int, completion: (replacementValue: Int) ->()) {
    let v = value * 5
    completion(replacementValue: v)
}
functonWithAClosure(5) { (replacementValue) in
    print(replacementValue)
}
