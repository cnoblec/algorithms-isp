//: Playground - noun: a place where people can play

import Cocoa

var myMessage: String

myMessage = "hello my name is carlos"

var characters: Int = myMessage.characters.count

var key: [Int] = []

var asciiValue: [Int] = []

var letters: [String] = []

for character in myMessage.characters
{
    key += [Int(arc4random_uniform(100000))]
    letters += [String(character)]
}

for scalar in myMessage.unicodeScalars
{
    asciiValue += [Int(scalar.value)]
}
