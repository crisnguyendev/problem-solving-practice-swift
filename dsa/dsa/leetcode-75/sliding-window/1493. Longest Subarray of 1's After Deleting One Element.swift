//
//  1493. Longest Subarray of 1's After Deleting One Element.swift
//  dsa
//
//  Created by Vu Nguyen on 3/21/25.
//

class LongestSubarraAfterDeletingOneElement {
    func longestSubarray(_ nums: [Int]) -> Int {
        var left = 0
        var zeroCount = 0
        var longest = 0

        for right in 0 ..< nums.count {
            if nums[right] == 0 {
                zeroCount += 1
            }

            while zeroCount > 1 {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }

            longest = max(longest, right - left)
        }

        return longest
    }
}
