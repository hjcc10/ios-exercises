import UIKit

/*
Strings ------------------------------------------------------------------------------------------------
*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    let cheese = "My favorite cheese is \(cheese)." // HC
    return cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*
Arrays & Dictionaries ----------------------------------------------------------------------------------
*/
// let numberArray = [1, 2, 3, 4] HC
// Add 5 to this array
// WORK HERE
var numberArray = [1, 2, 3, 4]
numberArray.append(5)

// let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"] HC
// Add 5 : "five" to this dictionary
// WORK HERE
var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
numberDictionary[5] = "five"
numberDictionary

/*
Loops ---------------------------------------------------------------------------------------------------
*/
// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for ind in 1...10 {
    println ("\(ind)")
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for ind in 1..<11 {
    println("\(ind)")
}
//
// ----------------------
//
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
    // HC
    var arrayFavoriteDrinks = Array<String>()
    for chars in characters {
        for (key, value) in chars {
            if (key == "favorite drink") {
                arrayFavoriteDrinks.append(value)
            }
        }
    }
    return arrayFavoriteDrinks
    // return [] HC
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)
favoriteDrinks

/*
Functions ------------------------------------------------------------------------------------------------
*/
// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
// HC
func outputStrings(names: Array<String>) -> (String) {
    var outString = ""
    for name in names {
        if (outString != "") {
            outString = outString + ";"
        }
        outString = outString + name
    }
    return outString
}
let a = outputStrings(strings)
// HC

let expectedOutput = "milk;eggs;bread;challah"

/*
Closures --------------------------------------------------------------------------------------------------
*/
let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]
// Use a closure to sort this array alphabetically
// WORK HERE
// HC
let b = cerealArray.sorted ({
    (one, two) in
    return two > one
})
// Another way
let c = sorted(cerealArray, <)

// let b = cerealArray.sorted { $1 > $0 } Why doesn't it work???


