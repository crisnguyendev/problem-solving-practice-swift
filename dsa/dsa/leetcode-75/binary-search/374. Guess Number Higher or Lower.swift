//
//  374. Guess Number Higher or Lower.swift
//  dsa
//
//  Created by Vu Nguyen on 3/23/25.
//

/**
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return          -1 if num is higher than the picked number
 *                  1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class GuessGame {
    func guess(_: Int) -> Int {
        return -1
    }
}

class GuesNumberHigherLower: GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var left = 1
        var right = n
        while left <= right {
            let mid = left + (right - left) / 2
            let find = guess(mid)
            if find == 0 {
                return mid
            } else if find < 0 {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1
    }
}
