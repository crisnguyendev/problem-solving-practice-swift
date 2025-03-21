//
//  1207. Unique Number of Occurrences.swift
//  dsa
//
//  Created by Vu Nguyen on 3/21/25.
//

class UniquNumberOccurrences {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var freq: [Int: Int] = [:]
        for num in arr {
            freq[num, default: 0] += 1
        }
        return Set(freq.values).count == freq.count
    }
}
