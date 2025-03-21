//
//  1657. Determine if Two Strings Are Close.swift
//  dsa
//
//  Created by Vu Nguyen on 3/21/25.
//

class DetermineTwoStringsAreClose {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        if word1.count != word2.count {
            return false
        }

        var freq1: [Character: Int] = [:]
        for char in word1 {
            freq1[char, default: 0] += 1
        }

        var freq2: [Character: Int] = [:]
        for char in word2 {
            freq2[char, default: 0] += 1
        }

        if freq1.keys != freq2.keys {
            return false
        }

        return freq1.values.sorted() == freq2.values.sorted()
    }
}
