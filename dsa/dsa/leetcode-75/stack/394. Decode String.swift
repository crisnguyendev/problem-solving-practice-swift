//
//  394. Decode String.swift
//  dsa
//
//  Created by Vu Nguyen on 3/22/25.
//

class DecodeString {
    func decodeString(_ s: String) -> String {
        var countStack: [Int] = []
        var stringStack: [String] = []
        var currentString: String = ""
        var k: Int = 0
        
        for char in s {
            if let digit = char.wholeNumberValue {
                k = k * 10 + digit
            } else if char == "[" {
                stringStack.append(currentString)
                countStack.append(k)
                currentString = ""
                k = 0
            } else if char == "]" {
                let repeatCount = countStack.removeLast()
                let previousString = stringStack.removeLast()
                currentString = previousString + String(repeating: currentString, count: repeatCount)
            } else {
                currentString.append(char)
            }
        }
        
        return currentString
    }
}
