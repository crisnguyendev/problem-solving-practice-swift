//
//  735. Asteroid Collision.swift
//  dsa
//
//  Created by Vu Nguyen on 3/22/25.
//

class AsteroidCollision {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []
        stack.reserveCapacity(asteroids.count)
        for next in asteroids {
            var current = next
            while let last = stack.last, last > 0, current < 0 {
                if abs(last) < abs(current) {
                    stack.removeLast()
                    continue
                } else if abs(last) == abs(current) {
                    stack.removeLast()
                    current = 0
                    break
                } else {
                    current = 0
                    break
                }
            }
            if current != 0 {
                stack.append(current)
            }
        }
        return stack
    }
}
