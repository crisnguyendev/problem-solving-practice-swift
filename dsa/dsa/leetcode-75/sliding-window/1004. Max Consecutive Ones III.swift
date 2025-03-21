//
//  1004. Max Consecutive Ones III.swift
//  dsa
//
//  Created by Vu Nguyen on 3/19/25.
//

class MaxConsecutiveOnesIII {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var left = 0
        var count = 0
        var longest = 0

        for right in 0 ..< nums.count {
            if nums[right] == 0 {
                count += 1
            }

            while count > k {
                if nums[left] == 0 {
                    count -= 1
                }
                left += 1
            }

            longest = max(longest, right - left + 1)
        }

        return longest
    }
}
