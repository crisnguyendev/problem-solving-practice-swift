//
//  151. Reverse Words in a String.swift
//  dsa
//
//  Created by Vu Nguyen on 3/18/25.
//

class ReverseWordInString {
    func reverseWords(_ s: String) -> String {
        return s.split(separator:" ").reversed().joined(separator:" ")  
    }
}

