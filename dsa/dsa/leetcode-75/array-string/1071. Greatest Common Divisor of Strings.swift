//
//  1071. Greatest Common Divisor of Strings.swift
//  dsa
//
//  Created by Vu Nguyen on 3/14/25.
//

class GreatestCommonDivisorOfStrings {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1.appending(str2) != str2.appending(str1) {
            return ""
        }
        let max = max(str1.count, str2.count)
        let min = min(str1.count, str2.count)
        let gcd = gcd(max, min)
        let index = str1.index(str1.startIndex, offsetBy: gcd)
        return String(str1[..<index])
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = abs(a)
        var b = abs(b)
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
}
