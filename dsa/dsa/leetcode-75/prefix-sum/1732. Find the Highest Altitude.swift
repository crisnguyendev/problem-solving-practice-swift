//
//  1732. Find the Highest Altitude.swift
//  dsa
//
//  Created by Vu Nguyen on 3/21/25.
//

class FindHighestAltitude {
    func largestAltitude(_ gain: [Int]) -> Int {
        var highest = gain[0]
        var current = gain[0]
        for i in 1 ..< gain.count {
            current += gain[i]
            highest = max(highest, current)
        }
        return max(highest, 0)
    }
}
