//
//  11. Container With Most Water.swift
//  dsa
//
//  Created by Vu Nguyen on 3/19/25.
//

class ContainerWitMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maxArea = min(height[left], height[right]) * (right - left)
        while left < right {
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
            maxArea = max(maxArea, min(height[left], height[right]) * (right - left))
        }
        return maxArea
    }
}
