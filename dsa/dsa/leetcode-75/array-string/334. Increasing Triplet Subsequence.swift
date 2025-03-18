//
//  334. Increasing Triplet Subsequence.swift
//  dsa
//
//  Created by Vu Nguyen on 3/18/25.
//

class IncreasingTripleSubsequence {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first = Int.max
        var second = Int.max
        for num in nums {
            if num <= first {
                first = num
            } else if num <= second {
                second = num
            } else {
                return true
            }
        }
        return false
    }
}
