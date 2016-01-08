//: Playground - noun: a place where people can play

import Cocoa

//Creat an empty string to store input message
var myMessage: String

//Input message to be decoded
myMessage = "I am GrootzZ"

// Counts the number of characters in the input text.
var characters: Int = myMessage.characters.count

// Create empty array to store the key for each letter in
var key: [Int] = []

// Create empty array to store the ascii value for each letter in
var asciiValue: [Int] = []

// Create empty array to store the encoded in
var encodedText: [Int] = []

// Create empty array to store each letter in
var letters: [String] = []

var randomValue = 0

var upperBoudary = 999877

var lowerBoudary = 99968

//
// This portion of the code encodes the text input.
//

for character in myMessage.characters
{
    randomValue = Int(arc4random_uniform(1000000))
    
    while randomValue < lowerBoudary || randomValue > upperBoudary
    {
        randomValue = Int(arc4random_uniform(10000000))
    }
    key += [randomValue]
    letters += [String(character)]
}

for ascii in myMessage.unicodeScalars
{
    asciiValue += [Int(ascii.value)]
}

for (var i = 0; i < characters; i++)
{
    encodedText += [key[i] + asciiValue[i]]
    
}

var test : String = String(encodedText[0])
var aLetterCode : Int = 87
