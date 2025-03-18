//
//  345. Reverse Vowels of a String.swift
//  dsa
//
//  Created by Vu Nguyen on 3/18/25.
//

class ReverseVowelsString {
    func reverseVowels(_ s: String) -> String {
        var chars: [Character] = Array(s)
        var left = 0
        var right = chars.count - 1
        while left < right {
            if !isVowel(chars[left]) {
                left += 1
                continue
            }
            if !isVowel(chars[right]) {
                right -= 1
                continue
            }
            let temp = chars[left]
            chars[left] = chars[right]
            chars[right] = temp
            left += 1
            right -= 1
        }
        return String(chars)
    }
    
    private func isVowel(_ c: Character) -> Bool {
        switch c {
        case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
            return true
        default:
            return false
        }
    }
}

