//
//  443. String Compression.swift
//  dsa
//
//  Created by Vu Nguyen on 3/18/25.
//

class StringCompression {
    func compress(_ chars: inout [Character]) -> Int {
        var index = 0
        var i = 0

        while i < chars.count {
            let c = chars[i]
            var count = 0
            while i < chars.count && chars[i] == c {
                i += 1
                count += 1
            }
            chars[index] = c
            index += 1
            if count > 1 {
                for char in String(count) {
                    chars[index] = char
                    index += 1
                }
            }
        }
        return index
    }
}
