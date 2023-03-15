//
//  Task_001.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 15.03.2023.
//

/// 1. Two Sum:
/// Given an array of integers nums and an integer target, return indices of the two numbers such thay they add up to target.
///
/// You may assume that each input would have exactly one solution, and you may not use the same element twice.
///
/// You can return the answer in any order.

import Foundation


class Task_001 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            if let index = nums.lastIndex(of: target - nums[i]), index != i {
                return [i, index]
            }
        }
        
        return []
    }
}
