//
//  Problem.345.swift
//  LeetCode.Swift
//
//  Created by Aynur Nasybullin on 09.08.2023.
//

// 345. Reverse Vowels of a String
// Easy
// Given a string s, reverse only all the vowels in the string and return it.
//
// The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
//
// Example 1:
// Input: s = "hello"
// Output: "holle"
//
// Example 2:
// Input: s = "leetcode"
// Output: "leotcede"
//
// Constraints:
// 1 <= s.length <= 3 * 10^5
// s consist of printable ASCII characters.

import Foundation

func problem_345_reverseVowels(_ s: String) -> String {
    let vowels: [Character] = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
    var chars = Array(s)
    
    var left = 0, right = chars.count - 1
    
    while left < right {
        while left < chars.count, !vowels.contains(chars[left]) {
            left += 1
        }
        
        while right >= 0, !vowels.contains(chars[right]) {
            right -= 1
        }
        
        if left >= right { break }
        
        let tmp = chars[right]
        chars[right] = chars[left]
        chars[left] = tmp
        
        left += 1
        right -= 1
    }
    
    return String(chars)
}
