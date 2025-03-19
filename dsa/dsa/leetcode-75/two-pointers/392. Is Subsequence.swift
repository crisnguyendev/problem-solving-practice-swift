//
//  392. Is Subsequence.swift
//  dsa
//
//  Created by Vu Nguyen on 3/19/25.
//

class IsSubsequence {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {
            return true
        }
        if s.count > t.count {
            return false
        }
        var sIndex = s.startIndex
        for char in t {
            if char == s[sIndex] {
                sIndex = s.index(after: sIndex)
                if sIndex == s.endIndex {
                    return true
                }
            }
        }
        return false
    }
}
