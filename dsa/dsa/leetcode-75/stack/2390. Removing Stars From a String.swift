//
//  2390. Removing Stars From a String.swift
//  dsa
//
//  Created by Vu Nguyen on 3/22/25.
//

class RemovingStarsFromString {
    func removeStars(_ s: String) -> String {
        var stack = [Character]()
        stack.reserveCapacity(s.count)

        for c in s {
            if c == "*" {
                stack.removeLast()
            } else {
                stack.append(c)
            }
        }
        return String(stack)
    }
}
