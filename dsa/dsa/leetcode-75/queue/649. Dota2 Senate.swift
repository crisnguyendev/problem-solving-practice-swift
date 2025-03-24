//
//  649. Dota2 Senate.swift
//  dsa
//
//  Created by Vu Nguyen on 3/22/25.
//

class Dota2Senate {
    func predictPartyVictory(_ senate: String) -> String {
        var radiantQueue: [Int] = []
        var direQueue: [Int] = []

        for (i, char) in senate.enumerated() {
            if char == "R" {
                radiantQueue.append(i)
            } else {
                direQueue.append(i)
            }
        }

        while !radiantQueue.isEmpty && !direQueue.isEmpty {
            let radiantIndex = radiantQueue.removeFirst()
            let direIndex = direQueue.removeFirst()
            if radiantIndex < direIndex {
                radiantQueue.append(radiantIndex + senate.count)
            } else {
                direQueue.append(direIndex + senate.count)
            }
        }

        return radiantQueue.isEmpty ? "Dire" : "Radiant"
    }
}
