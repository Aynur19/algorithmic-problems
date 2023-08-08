//
//  Problem.1071.swift
//  LeetCode.Swift
//
//  Created by Aynur Nasybullin on 04.08.2023.
//
// 1071. Greatest Common Divisor of Strings
// Easy
//
// For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).
// Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
//
// Example 1:
// Input: str1 = "ABCABC", str2 = "ABC"
// Output: "ABC"
//
// Example 2:
// Input: str1 = "ABABAB", str2 = "ABAB"
// Output: "AB"
//
// Example 3:
// Input: str1 = "LEET", str2 = "CODE"
// Output: ""
//
// Constraints:
// 1 <= str1.length, str2.length <= 1000
// str1 and str2 consist of English uppercase letters.

import Foundation

func problem_1071_gcdOfStrings(_ str1: String, _ str2: String) -> String {
    var str = str1.count > str2.count ? str2 : str1
    while str.count > 0 {
        
        if check(pattern: str, str: str1) && check(pattern: str, str: str2) {
            break
        }
        
        _ = str.removeLast()
    }
    
    return str
}

private func check(pattern: String, str: String) -> Bool {
    var str = str
    
    while str.count > 0 {
        if str.hasPrefix(pattern) {
            str.removeFirst(pattern.count)
        } else {
            return false
        }
    }
    
    return true
}
