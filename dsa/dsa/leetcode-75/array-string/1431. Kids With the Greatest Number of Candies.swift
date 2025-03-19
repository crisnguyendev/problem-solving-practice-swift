//
//  1431. Kids With the Greatest Number of Candies.swift
//  dsa
//
//  Created by Vu Nguyen on 3/17/25.
//

class KidsWithGreatestNumberCandies {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var greatestCandies = 0
        for candy in candies {
            if candy > greatestCandies {
                greatestCandies = candy
            }
        }
        return candies.map { $0 + extraCandies >= greatestCandies }
    }
}
