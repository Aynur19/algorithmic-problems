//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 18.03.2023.
//

/// 10. Regular Expression Matching
///
/// Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:
/// 1) '.' Matches any single character.
/// 2) '*' Matches zero or more of the preceding element.
///
/// The matching should cover the entire input string (not partial).
///
/// Constraints:
/// 1) 1 <= s.length <= 20
/// 2) 1 <= p.length <= 20
/// 3) s contains only lowercase English letters.
/// 4) p contains only lowercase English letters, '.', and '*'.
/// 5) It is guaranteed for each appearance of the character '*', there will be a previous valid character to match.


import Foundation

class Task_010 {
    func cleanPattern(_ p: String) -> String {
        var pattern = p
        while pattern.contains(".*.*") {
            pattern = pattern.replacingOccurrences(of: ".*.*", with: ".*")
        }
        
        while pattern.contains(".*.") {
            pattern = pattern.replacingOccurrences(of: ".*.", with: ".*")
        }
        
        return pattern
    }

    func isMatch(_ s: String, _ p: String) -> Bool {
        var word = Array(s)
        var pattern = Array(cleanPattern(p))
        
        var pChar: Character = " "
        var wChar: Character = " "
        var lastChar: Character = " "
                
        while pattern.count > 1 && !word.isEmpty {
            pChar = pattern.removeFirst()
            
            if pattern.first! == "*" {
                if pChar == "." {
                    if pattern.count > 1 {
                        pChar = pattern[1]
                        var pCharIdx = -1
                        let reverse = Array(word.reversed())
                        for i in 0..<reverse.count {
                            if reverse[i] == pChar {
                                pCharIdx = word.count - i - 1
                                break
                            }
                        }
                        
                        if pCharIdx >= 0 {
                            word.removeFirst(pCharIdx)
                            lastChar = " "
                        }
                        else { return false }
                        
                        
                        while !pattern.isEmpty && (pattern.first! == "*" || pattern.first! == pChar) {
                            pattern.removeFirst()
                        }
                        
                        pattern.insert(pChar, at: 0)
                        
                    }
                    else { return true }
                }
                else if pChar != word.first! {
                    pattern.removeFirst()
                    continue
                }
                else {
                    lastChar = pChar
                    while !word.isEmpty && pChar == word.first! {
                        word.removeFirst()
                    }
                    pattern.removeFirst()
                    continue
                }
            }
            else {
                if pChar == "." {
                    word.removeFirst()
                    continue
                }
                else if pChar == word.first! {
                    word.removeFirst()
                    continue
                }
            }
            
            if pChar != word.first! { return false }
        }
        
        while !pattern.isEmpty {
            if pattern.count > 1 && pattern[1] == "*" {
                pattern.removeFirst(2)
            }
            else if pattern.first! == lastChar {
                pattern.removeFirst()
            }
            else if !word.isEmpty {
                if pattern.first! == "." || pattern.first! == word.first! {
                    pattern.removeFirst()
                    word.removeFirst()
                }
                else { return false }
            } else { return false }
        }
        
        
        if pattern.count <= 1 {
            return String(word) == String(pattern)
        }
        
        return word.isEmpty && pattern.isEmpty
    }
//        var word = Array(s)
//        var pattern = Array(cleanPattern(p))
//
//        var lastChar: Character = " "
//        var pChar: Character = " "
//        var wChar: Character = " "
//
//        while !pattern.isEmpty {
//            if word.isEmpty { break }
//
//            pChar = pattern.last!
//            wChar = word.last!
//
//            if pChar == wChar || pChar == "." {
//                pattern.removeLast()
//                word.removeLast()
//            }
//            else if pChar == "*" {
//                pChar = pattern[pattern.count - 2]
//                pattern.removeLast(2)
//
//                if pChar == wChar {
//                    lastChar = wChar
//
//                    while !word.isEmpty && pChar == word.last! {
//                        word.removeLast()
//                    }
//                }
//                else if pChar == "." {
//                    while !pattern.isEmpty && pattern.last! == pChar {
//                        pChar = pattern.removeLast()
//                    }
//
//                    if pattern.isEmpty { return true }
//                    else {
//                        if pattern.last! == "*" {
//                            pattern.removeLast()
//                        }
//                        pChar = pattern.last!
//                        while !word.isEmpty && pChar != word.last!  {
//                            wChar = word.removeLast()
//                        }
//
//                        if word.isEmpty { break }
//                    }
//                }
//            }
//            else { return false }
//        }
//
//        while !pattern.isEmpty {
//            pChar = pattern.removeLast()
//
//            if pChar == "*" {
//                pattern.removeLast()
//            }
//            else if pChar != lastChar { return false }
//        }
//
//        return word.isEmpty && pattern.isEmpty
//    }
//
//    func isMatch(_ word: [Character], _ pattern: [Character]) -> Bool {
//        if word.isEmpty && pattern.isEmpty { return true }
//
//        guard var starIdx = pattern.lastIndex(of: "*") else {
//            if word.count != pattern.count { return false }
//            if String(word) != String(pattern) && pattern.lastIndex(of: ".") == nil { return false }
//
//            for i in 0..<word.count {
//                if word[i] != pattern[i] && pattern[i] != "." { return false }
//            }
//            return true
//        }
//
//
//
//        if isMatch(word[starIdx + 1..<], <#T##pattern: [Character]##[Character]#>)
//
//        return false
//    }
////        var pattern = Array(p)
////        var word = Array(s)
////
////        var wChar: Character = " "
////        var pChar: Character = " "
////
////        while !pattern.isEmpty {
////            if word.isEmpty { break }
////
////            pChar = pattern.removeLast()
////            if pChar == "." {
////                wChar = word.removeLast()
////                continue
////            }
////            else if pChar == "*" {
////                pChar = pattern.removeLast()
////
////                if pChar == "." {
////                    if pattern.isEmpty
////                    wChar = word.removeLast()
////                    continue
////                }
////            }
////        }
////
////        return false
////    }
//        var pattern = Array(p)
//        var word = Array(s)
//
//        var lastChar: Character = " "
//        var wStarChar: Character = " "
//        var pChar: Character = " "
//
//        while !pattern.isEmpty {
//            if word.isEmpty { break }
//
//            pChar = pattern.first!
//            if pChar == "." {
//                if pattern.count > 1 && pattern[1] == "*" {
//                    if pattern.count < 3 { return true }
//                    else { return s.hasSuffix(String(pattern[2..<pattern.count])) }
//                }
//                pattern.removeFirst()
//                lastChar = word.removeFirst()
//            }
//            else if pChar == word.first! {
//                pattern.removeFirst()
//                lastChar = word.removeFirst()
//            }
//            else if pChar == "*" {
//                if lastChar == word.first! {
//                    while !word.isEmpty && word.first! == lastChar {
//                        lastChar = word.removeFirst()
//                    }
//                }
//                pattern.removeFirst()
//
//                if !pattern.isEmpty && pattern.first! == lastChar { pattern.removeFirst() }
//            }
//            else {
//                if pattern.count > 1 && pattern[1] == "*" { pattern.removeFirst(2) }
//                else { return false}
//            }
//        }
//
//        if word.isEmpty && pattern.isEmpty { return true }
//        else if word.isEmpty { return pattern.count == 1 && pattern.removeFirst() == "*" }
//        else { return false }
//    }
//    func isMathWithoutStar(_ s: [Character], _ p: [Character]) -> Bool {
//        var phrase = s, pattern = p
//
//        while !pattern.isEmpty {
//            if phrase.isEmpty { return false }
//
//            let pChar = pattern.removeFirst()
//            let currentChar = phrase.removeFirst()
//
//            if pChar == "." || pChar == currentChar { continue }
//            else { return false }
//        }
//
//        return phrase.isEmpty
//    }
//
//    func isMatch(_ s: String, _ p: String) -> Bool {
//        guard let starIndex = p.firstIndex(of: "*") else {
//            return isMathWithoutStar(Array(s), Array(p))
//        }
//        if s.endIndex < starIndex { return false }
//
//        var word = Array(s[p.startIndex..<starIndex])
//        let pattern = Array(p[p.startIndex..<starIndex])
//
//        if isMathWithoutStar(word, pattern) {
//            if let pLast = pattern.last {
//                if pLast == "." { return true }
//                else {
//                    if var currentChar = word.last  {
//                        if currentChar == pLast {
//                            return isMatch(<#T##s: String##String#>, <#T##p: String##String#>)
//                        }
//                    }
//                    return String(s[starIndex..<s.endIndex]).drop(while: { char in
//                        return char == pLast
//                    }).isEmpty
//                }
//            } else { return false }
//        } else if pattern.count == 1 {
//            return isMatch(s, String(String(p[starIndex..<p.endIndex]).dropFirst(1)))
//        } else { return false }
//    }
}
