//
//  Problem.1768.swift
//  LeetCode.Swift
//
//  Created by Aynur Nasybullin on 04.08.2023.
//

// Easy
// You are given two strings word1 and word2.
// Merge the strings by adding letters in alternating order, starting with word1.
// If a string is longer than the other, append the additional letters onto the end of the merged string.
//
// Return the merged string.
//
// Example 1:
// Input: word1 = "abc", word2 = "pqr"
// Output: "apbqcr"
// Explanation: The merged string will be merged as so:
// word1:  a   b   c
// word2:    p   q   r
// merged: a p b q c r
//
// Example 2:
// Input: word1 = "ab", word2 = "pqrs"
// Output: "apbqrs"
// Explanation: Notice that as word2 is longer, "rs" is appended to the end.
// word1:  a   b
// word2:    p   q   r   s
// merged: a p b q   r   s
//
// Example 3:
// Input: word1 = "abcd", word2 = "pq"
// Output: "apbqcd"
// Explanation: Notice that as word1 is longer, "cd" is appended to the end.
// word1:  a   b   c   d
// word2:    p   q
// merged: a p b q c   d
//
// Constraints:
// 1 <= word1.length, word2.length <= 100
// word1 and word2 consist of lowercase English letters.

import Foundation

func problem_1768_mergeAlternately(_ word1: String, _ word2: String) -> String {
    let chars1 = Array(word1)
    let chars2 = Array(word2)
    var result = [Character]()
    
    var minCount = min(chars1.count, chars2.count)
    for idx in 0..<minCount {
        result.append(chars1[idx])
        result.append(chars2[idx])
    }
    
    while chars1.count > minCount {
        result.append(chars1[minCount])
        minCount += 1
    }
    
    while chars2.count > minCount {
        result.append(chars2[minCount])
        minCount += 1
    }
    
    return String(result)
}
