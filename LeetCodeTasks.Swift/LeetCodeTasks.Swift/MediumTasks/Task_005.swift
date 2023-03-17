//
//  Task_005.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 16.03.2023.
//

/// 5. Longest Palindromic Substring:
///
/// Given a string s, return the longest palindromic substring in s.
///
/// Constraints:
/// 1) 1 <= s.length <= 1000
/// 2) s consist of only digits and English letters.


/// mamamiadqwewqda
/// adqwewqdaimamam
import Foundation

class Task_005 {
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 { return s }
        if s.count < 3 { return s.elementsEqual(s.reversed()) ? s : String(s[s.startIndex]) }
        
        let chars = Array(s)
        let oddPalidrome = longestOddPalindrome(chars)
        let evenPalidrome = longestEvenPalindrome(chars)
        
        return oddPalidrome.count > evenPalidrome.count ? oddPalidrome : evenPalidrome
    }
    
    func longestOddPalindrome(_ chars: [Character]) -> String {
        var indexes: [Int] = []
        var palindrom = ""

        for i in 1..<chars.count - 1 {
            if chars[i - 1] == chars[i + 1] {
                indexes.append(i)
            }
        }
        
        indexes.forEach { index in
            let char = chars[index]
            var isOneSymbol = true
            var i = index - 1, j = index + 1

            while i >= 0 && j < chars.count {
                if chars[i] == chars[j] {
                    if chars[i] != char { isOneSymbol = false }
                    i -= 1
                    j += 1
                } else { break }
            }
            
            if !isOneSymbol {
                if j - i - 2 > palindrom.count {
                    palindrom = String(chars[i + 1...j - 1])
                }
            } else {
                while i >= 0 && chars[i] == char { i -= 1 }
                while j < chars.count && chars[j] == char { j += 1 }
                
                if palindrom.count < j - i - 2 {
                    palindrom = String(chars[i + 1...j - 1])
                }
            }
        }
        
        return palindrom.isEmpty ? String(chars[0]) : palindrom
    }
    
    func longestEvenPalindrome(_ chars: [Character]) -> String {
        var indexes: [Int] = []
        var palindrom = ""

        for i in 0..<chars.count - 1 {
            if chars[i] == chars[i + 1] {
                indexes.append(i + 1)
            }
        }
        
        indexes.forEach { index in
            let char = chars[index]
            var isOneSymbol = true
            
            var i = index - 2, j = index + 1
            while i >= 0 && j < chars.count {
                if chars[i] == chars[j] {
                    if chars[i] != char {
                        isOneSymbol = false
                    }
                    i -= 1
                    j += 1
                } else {
                    break
                }
            }
            
            if !isOneSymbol {
                if j - i - 2 > palindrom.count {
                    palindrom = String(chars[i + 1...j - 1])
                }
            } else {
                while i >= 0 && chars[i] == char { i -= 1 }
                while j < chars.count && chars[j] == char { j += 1 }
                
                if palindrom.count < j - i - 2 {
                    palindrom = String(chars[i + 1...j - 1])
                }
            }
        }
        
        return palindrom.isEmpty ? String(chars[0]) : palindrom
    }
}
