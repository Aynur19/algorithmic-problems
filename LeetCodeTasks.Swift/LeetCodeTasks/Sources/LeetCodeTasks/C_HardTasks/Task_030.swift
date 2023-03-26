//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 26.03.2023.
//

/// 30. Substring with Concatenation of All Words:
///
/// You are given a string s and an array of strings words. All the strings of words are of the same length.
///
/// A concatenated substring in s is a substring that contains all the strings of any permutation of words concatenated.
///
/// For example, if words = ["ab","cd","ef"], then "abcdef", "abefcd", "cdabef", "cdefab", "efabcd", and "efcdab" are all concatenated strings.
/// "acdbef" is not a concatenated substring because it is not the concatenation of any permutation of words.
///
/// Return the starting indices of all the concatenated substrings in s. You can return the answer in any order.
///
///
/// Constraints:
/// 1) 1 <= s.length <= 104
/// 2) 1 <= words.length <= 5000
/// 3) 1 <= words[i].length <= 30
/// 4) s and words[i] consist of lowercase English letters.


import Foundation

extension HardTasks {
    private func findSubstring(_ s: Substring, _ d: [String:Int], _ n: Int, _ size: Int) -> Bool {
        var dict = d
        var tmp: String
        var start: String.Index
        var end: String.Index

        for i in 0..<n {
            start = s.index(s.startIndex, offsetBy: i * size)
            end = s.index(start, offsetBy: size)
            tmp = String(s[start..<end])
            
            if dict[tmp] == nil { return false }
            else {
                if dict[tmp]! > 0 {
                    dict[tmp]! -= 1
                }
                
                if dict[tmp]! == 0 {
                    dict.removeValue(forKey: tmp)
                }
            }
        }
        
        return true
    }
    
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        let size = words[0].count * words.count
        guard s.count >= size  else { return [] }
        
        var dict: [String:Int] = [:]
        for i in 0..<words.count {
            if dict[words[i]] == nil {
                dict[words[i]] = 1
            } else {
                dict[words[i]]! += 1
            }
        }
        
        var result: [Int] = []
        var start: String.Index
        var end: String.Index

        for i in 0..<(s.count - size + 1) {
            start = s.index(s.startIndex, offsetBy: i)
            end = s.index(start, offsetBy: size)
            
            if findSubstring(s[start..<end], dict, words.count, words[0].count) {
                result.append(i)
            }
        }
        
        return result
    }
}
