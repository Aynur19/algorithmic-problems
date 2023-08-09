//
//  Problem.605.swift
//  LeetCode.Swift
//
//  Created by Aynur Nasybullin on 08.08.2023.
//

// 605. Can Place Flowers
// Easy
// You have a long flowerbed in which some of the plots are planted, and some are not.
// However, flowers cannot be planted in adjacent plots.
//
// Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty,
// and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
//
// Example 1:
// Input: flowerbed = [1,0,0,0,1], n = 1
// Output: true
//
// Example 2:
// Input: flowerbed = [1,0,0,0,1], n = 2
// Output: false
//
// Constraints:
// 1 <= flowerbed.length <= 2 * 10^4
// flowerbed[i] is 0 or 1.
// There are no two adjacent flowers in flowerbed.
// 0 <= n <= flowerbed.length

import Foundation

func problem_605_canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    guard !flowerbed.isEmpty else {
        return n < 1
    }
    
    guard flowerbed.count > 1 else {
        if flowerbed[0] == 0 {
            return n < 2
        } else {
            return n < 1
        }
    }
    
    var count = 0
    var idx = 0
    
    while idx + 1 < flowerbed.count {
        if flowerbed[idx] == 0 {
            if flowerbed[idx + 1] == 0 {
                count += 1
                idx += 2
            } else {
                idx += 3
            }
        } else {
            idx += 2
        }
    }
    
    if idx < flowerbed.count, idx - 1 >= 0, flowerbed[idx - 1] == 0, flowerbed[idx] == 0 {
        count += 1
    }
    
    return count >= n
}
