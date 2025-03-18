//
//  605. Can Place Flowers.swift
//  dsa
//
//  Created by Vu Nguyen on 3/18/25.
//

class CanPlaceFlowers {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed = flowerbed
        var i: Int = 0
        var planted: Int = 0
        
        while planted < n && i < flowerbed.count {
            if flowerbed[i] == 1 {
                i += 1
                continue
            }
            let left = i == 0 || flowerbed[i - 1] == 0
            let right = i == flowerbed.count - 1 || flowerbed[i + 1] == 0
            if left && right {
                flowerbed[i] = 1
                i += 2
                planted += 1
            } else {
                i += 1
            }
        }
        return planted == n
    }
}
