//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

extension String
{
    var ascii: [UInt8?]
    {
        return unicodeScalars.map {$0.isASCII() ? UInt8($0.value) : nil}
    }
}

"Hello world`eeee".ascii