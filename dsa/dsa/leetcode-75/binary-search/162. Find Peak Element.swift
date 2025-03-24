//
//  162. Find Peak Element.swift
//  dsa
//
//  Created by Vu Nguyen on 3/24/25.
//

class FindPeakElement {
    func findPeakElement(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left < right {
            let mid = (right + left) / 2
            if nums[mid] < nums[mid + 1] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return left
    }
}
