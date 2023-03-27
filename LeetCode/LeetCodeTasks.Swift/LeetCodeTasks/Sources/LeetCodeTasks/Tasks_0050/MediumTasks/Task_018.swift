//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 23.03.2023.
//

/// 18. 4Sum
///
/// Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:
/// 1) 0 <= a, b, c, d < n
/// 2) a, b, c, and d are distinct.
/// 3) nums[a] + nums[b] + nums[c] + nums[d] == target
///
/// You may return the answer in any order.
///
///
/// Constraints:
/// 1) 1 <= nums.length <= 200
/// 2) -10^9 <= nums[i] <= 10^9
/// 3) -10^9 <= target <= 10^9



import Foundation

extension MediumTasks {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        guard nums.count > 3 else { return [] }
        let numbers = nums.sorted()
        let size = numbers.count - 1
        
        var c = 0, d = 0
        var sum = 0
        var result: [[Int]] = []
        var tmp: (Int, Int, Int, Int)
        
        for a in 0..<(size - 2) where a == 0 || numbers[a] != numbers[a - 1] {
            for b in (a + 1)..<(size - 1) where b == a + 1 || numbers[b] != numbers[b - 1] {
                c = b + 1
                d = size
                
                while c < d {
                    tmp = (numbers[a], numbers[b], numbers[c], numbers[d])
                    sum = tmp.0 + tmp.1 + tmp.2 + tmp.3
                    if sum == target {
                        result.append([numbers[a], numbers[b], numbers[c], numbers[d]])
                        c += 1
                        d -= 1
                    }
                    
                    if sum < target {
                        while numbers[c] == tmp.2, c < d { c += 1 }
                    } else {
                        while numbers[d] == tmp.3, c < d { d -= 1 }
                    }
                }
            }
        }
        
        return result
    }
}
