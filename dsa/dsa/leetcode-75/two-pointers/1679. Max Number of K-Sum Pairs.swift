//
//  1679. Max Number of K-Sum Pairs.swift
//  dsa
//
//  Created by Vu Nguyen on 3/19/25.
//

class MaxNumbeKSumPairs {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var frequency: [Int: Int] = [:]
        for num in nums {
            frequency[num, default: 0] += 1
        }
        var count = 0
        for (first, firstFreq) in frequency {
            let second = k - first
            if first == second {
                count += firstFreq / 2
            }
            if first < second, let secondFreq = frequency[second] {
                count += min(firstFreq, secondFreq)
            }
        }
        return count
    }
    
    func maxOperationsOptimal(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums.sorted()
        var left = 0
        var right = nums.count - 1
        var count = 0
        while left < right {
            let sum  = nums[left] + nums[right]
            if sum == k {
                count += 1
                left += 1
                right -= 1
            } else if sum < k {
                left += 1
            } else {
                right -= 1
            }
        }
        return count
    }
}
