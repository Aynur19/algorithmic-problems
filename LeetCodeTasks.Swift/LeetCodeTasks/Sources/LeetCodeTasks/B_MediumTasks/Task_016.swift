//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 22.03.2023.
//

/// 16. 3Sum Closest:
///
/// Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.
///
/// Return the sum of the three integers.
///
/// You may assume that each input would have exactly one solution.
///
///
/// Constraints:
/// 1) 3 <= nums.length <= 500
/// 2) -1000 <= nums[i] <= 1000
/// 3) -10^4 <= target <= 10^4


import Foundation

extension MediumTasks {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 3 else { return nums[0] + nums[1] + nums[2] }
        
        let numbers = nums.sorted()
        let size = numbers.count - 1
        var a = 0, b = 0
        var result = Int.max
        var sum = 0
        var min = Int.max
        var gMin = Int.max
        
        for i in 0..<size {
            a = i + 1
            b = size
            
            while a < b {
                sum = numbers[i] + numbers[a] + numbers[b]
                min = target - sum
                
                if min == 0 { return sum }
                if min > 0 {
                    a += 1
                } else {
                    b -= 1
                }
                
                if gMin > abs(min) {
                    gMin = abs(min)
                    result = sum
                }
            }
        }
        
        return result
    }
}
