//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 20.03.2023.
//

/// 15. 3Sum:
///
/// Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]]
/// such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
///
/// Notice that the solution set must not contain duplicate triplets.
///
///
/// Constraints:
/// 1) 3 <= nums.length <= 3000
/// 2) -105 <= nums[i] <= 105


// -1 -1 -1 -1 0 0 2 3 3

import Foundation

extension MediumTasks {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        let numbers = nums.sorted()
        var result: [[Int]] = []
        var a = 0, b = 0
        var sum = 0
        
        for i in 0..<numbers.count  {
            if i > 0 && numbers[i - 1] == numbers[i] { continue }
            
            if numbers[i] == 0 {
                if i < numbers.count - 2 && numbers[i + 1] == numbers[i + 2] && numbers[i + 1] == 0 {
                    result.append([0, 0, 0])
                }
                break
            }
            
            a = i + 1
            b = numbers.count - 1
            
            while a < b {
                sum = numbers[a] + numbers[b]
                if numbers[i] == -sum {
                    result.append([numbers[i], numbers[a], numbers[b]])
                    a += 1
                    b -= 1
                    
                    while a < b && numbers[a - 1] == numbers[a] { a += 1 }
                    while a < b && numbers[b + 1] == numbers[b] { b -= 1 }
                    
                } else {
                    sum > -numbers[i] ? (b -= 1) : (a += 1)
                }
            }
        }
        
        return result
    }
}
