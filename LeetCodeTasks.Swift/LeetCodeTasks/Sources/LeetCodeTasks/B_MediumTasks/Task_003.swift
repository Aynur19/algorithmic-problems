//
//  Task_003.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 16.03.2023.
//

/// 3. Longest Substring Without Repeating Characters:
///
/// Given a string s, find the length of the longest substring without repeating characters.
///
/// Constraints:
/// 1) 0 <= s.length <= 5 * 104
/// 2) 's' consists of English letters, digits, symbols and spaces.


import Foundation

class Task_003 {
    let alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ "
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        return getLengthMaxUnique(Array(s))
    }
    
    func getLengthMaxUnique(_ chars: [Character]) -> Int {
        var charsDict: [Character: Int] = [:]
        var count = 0
        
        for i in 0..<chars.count {
            let charIndex = charsDict[chars[i]]
            if charIndex != nil {
                let count2 = getLengthMaxUnique(Array(chars[charIndex! + 1..<chars.count]))
                
                return count > count2 ? count : count2
            }
            
            count += 1
            charsDict[chars[i]] = i
            
            if count >= alphabet.count { return count }
        }
        
        return count
    }
}
