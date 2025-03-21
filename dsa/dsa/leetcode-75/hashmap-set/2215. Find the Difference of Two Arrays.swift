//
//  2215. Find the Difference of Two Arrays.swift
//  dsa
//
//  Created by Vu Nguyen on 3/21/25.
//

class FindDifferenceTwoArrays {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)

        let diff1 = Array(set1.subtracting(set2))
        let diff2 = Array(set2.subtracting(set1))

        return [diff1, diff2]
    }
}
