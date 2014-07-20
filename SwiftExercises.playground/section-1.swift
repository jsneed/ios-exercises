import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is " + cheese + "."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray.append(5)
numberArray

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"
numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for index in 1...10 {
    println("hi \(index)")
    index
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for index in 1..<10 {
    println("hi2 \(index)")
    index
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinkArray : [String] = []
    for chars in characters {
        for (key, value) in chars {
            if key == "favorite drink" {
                drinkArray.append(value)
            }
        }
    }
    return drinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func concatStringArray(strArray:Array<String>) -> String {
    var myString : String = ""
    for var i = 0; i < strArray.count; i++ {
        if i != 0 {
            myString = myString + ";"
        }
        myString = myString + strArray[i]
    }
    return myString
}

let actualOutput = concatStringArray(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

var cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
var cerealArraySorted = sorted(cerealArray, {(cereal1: String, cereal2: String) -> Bool in
    return cereal1 < cereal2
})
