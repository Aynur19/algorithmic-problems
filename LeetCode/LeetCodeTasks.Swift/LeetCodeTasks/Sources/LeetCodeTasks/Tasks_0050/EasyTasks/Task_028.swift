//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 26.03.2023.
//

/// 28. Find the Index of the First Occurrence in a String:
///
/// Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
///
///
/// Constraints:
/// 1) 1 <= haystack.length, needle.length <= 10^4
/// 2) haystack and needle consist of only lowercase English characters.


import Foundation


extension EasyTasks {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.count >= needle.count else { return -1 }
        guard haystack != needle else { return 0 }
        
        let h = Array(haystack)
        let n = Array(needle)
        let size = h.count - n.count + 1
        var diff = 0
        
        for var i in 0..<size where h[i] == n[0] {
            diff = i
            for j in 1..<n.count where h[i + j] != n[j] {
                i += j
                break
            }
            
            if diff == i { return i }
            i -= 1
        }
        
        return -1
    }
}
