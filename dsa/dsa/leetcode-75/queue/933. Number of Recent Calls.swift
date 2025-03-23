    //
//  933. Number of Recent Calls.swift
//  dsa
//
//  Created by Vu Nguyen on 3/22/25.
//

class RecentCounter {
    let INTERVAL = 3000
    var pings: [Int] = []

    init() {
        
    }
    
    func ping(_ t: Int) -> Int {
        pings.append(t)
        while let oldPing = pings.first, t - oldPing > INTERVAL {
            pings.removeFirst()
        }
        return pings.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */
