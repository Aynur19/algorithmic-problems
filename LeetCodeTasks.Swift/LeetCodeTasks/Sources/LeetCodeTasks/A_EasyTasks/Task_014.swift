//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 20.03.2023.
//

/// 14. Longest Common Prefix:
///
/// Write a function to find the longest common prefix string amongst an array of strings.
///
/// If there is no common prefix, return an empty string "".
///
///
/// Constraints:
/// 1) 1 <= strs.length <= 200
/// 2) 0 <= strs[i].length <= 200
/// 3) strs[i] consists of only lowercase English letters.

import Foundation

extension EasyTasks {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let shortStr = strs.min() else { return "" }
        
        var containsCount = 0
        var short = Array(shortStr)
        var word = ""
        
        while containsCount != strs.count && !short.isEmpty  {
            containsCount = 0
            word = String(short)
            
            for i in 0..<strs.count {
                if strs[i].hasPrefix(word) {
                    containsCount += 1
                } else { break }
            }
            
            short.removeLast()
        }
        
        return containsCount == strs.count ? word : ""
    }
}
