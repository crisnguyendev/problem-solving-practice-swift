//
//  283. Move Zeroes.swift
//  dsa
//
//  Created by Vu Nguyen on 3/19/25.
//

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        var nonZeroIndex = 0
        for zeroIndex in 0 ..< nums.count {
            if nums[zeroIndex] != 0 {
                nums.swapAt(nonZeroIndex, zeroIndex)
                nonZeroIndex += 1
            }
        }
    }
}
