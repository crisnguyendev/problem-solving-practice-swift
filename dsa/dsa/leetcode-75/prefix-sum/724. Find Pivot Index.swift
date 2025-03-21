//
//  724. Find Pivot Index.swift
//  dsa
//
//  Created by Vu Nguyen on 3/21/25.
//

class FindPivotIndex {
    func pivotIndex(_ nums: [Int]) -> Int {
        var prefixSum: [Int] = nums
        prefixSum[0] = nums[0]
        for i in 1 ..< nums.count {
            prefixSum[i] = prefixSum[i - 1] + nums[i]
        }
        for i in 0 ..< nums.count {
            if prefixSum[i] - nums[i] == prefixSum[nums.count - 1] - prefixSum[i] {
                return i
            }
        }
        return -1
    }
}
