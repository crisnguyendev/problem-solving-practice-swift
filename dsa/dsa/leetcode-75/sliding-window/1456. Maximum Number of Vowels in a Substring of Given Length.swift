//
//  1456. Maximum Number of Vowels in a Substring of Given Length.swift
//  dsa
//
//  Created by Vu Nguyen on 3/19/25.
//

class MaximumNumberVowelsInSubstring {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        var count = 0
        let chars = Array(s)
        for i in 0 ..< k {
            if isVowels(chars[i]) {
                count += 1
            }
        }
        var maxCount = count
        for i in k ..< chars.count {
            if isVowels(chars[i]) {
                count += 1
            }

            if isVowels(chars[i - k]) {
                count -= 1
            }
            maxCount = max(maxCount, count)
        }
        return maxCount
    }

    func isVowels(_ c: Character) -> Bool {
        switch c {
        case "a", "e", "i", "o", "u":
            return true
        default:
            return false
        }
    }
}
