//
//  2300. Successful Pairs of Spells and Potions.swift
//  dsa
//
//  Created by Vu Nguyen on 3/23/25.
//

class SuccessfulPairsSpellsAndPotion {
    func successfulPairs(_ spells: [Int], _ potions: [Int], _ success: Int) -> [Int] {
        var result: [Int] = []
        let potions = potions.sorted()
        for spell in spells {
            let minPosition: Int = (success + spell - 1) / spell
            let findPosition: Int = lowerBound(potions, minPosition)
            if findPosition == potions.count {
                result.append(0)
            } else {
                result.append(potions.count - findPosition)
            }
        }
        return result
    }

    func lowerBound(_ position: [Int], _ value: Int) -> Int {
        var left = 0
        var right = position.count
        while left < right {
            let mid = left + (right - left) / 2
            if position[mid] < value {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return left
    }
}
