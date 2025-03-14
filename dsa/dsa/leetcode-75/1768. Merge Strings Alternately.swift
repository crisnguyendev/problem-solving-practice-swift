//
//  1768. Merge Strings Alternately.swift
//  dsa
//
//  Created by Vu Nguyen on 3/13/25.
//

// Complexity:

class MergeStringsAlternately {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let chars1: [Character] = Array(word1)
        let chars2: [Character] = Array(word2)
        
        var result: [Character] = []
        var index = 0
        
        let minLength = min(word1.count, word2.count)
        
        while index < minLength {
            result.append(chars1[index])
            result.append(chars2[index])
            index += 1
        }
        
        while index < chars1.count {
            result.append(chars1[index])
            index += 1
        }
        
        while index < chars2.count {
            result.append(chars2[index])
            index += 1
        }
        return String(result)
    }
}
