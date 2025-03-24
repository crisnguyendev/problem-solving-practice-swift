//
//  875. Koko Eating Bananas.swift
//  dsa
//
//  Created by Vu Nguyen on 3/24/25.
//

class KokoEatingBananas {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var left = 1
        var right = piles.max() ?? 1
        while left < right {
            let mid = (left + right) / 2
            if requireHour(piles: piles, for: mid) > h {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return left
    }

    func requireHour(piles: [Int], for speed: Int) -> Int {
        var total = 0
        for pile in piles {
            total += (pile + speed - 1) / speed
        }
        return total
    }
}
