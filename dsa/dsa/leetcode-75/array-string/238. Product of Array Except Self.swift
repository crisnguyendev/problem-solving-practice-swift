//
//  238. Product of Array Except Self.swift
//  dsa
//
//  Created by Vu Nguyen on 3/18/25.
//

class ProductOfArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result: [Int] = Array(repeating: 1, count: n)
        for i in 1 ..< n {
            result[i] = result[i - 1] * nums[i - 1]
        }
        var right = 1
        for i in (0 ..< n).reversed() {
            result[i] *= right
            right *= nums[i]
        }
        return result
    }
}
