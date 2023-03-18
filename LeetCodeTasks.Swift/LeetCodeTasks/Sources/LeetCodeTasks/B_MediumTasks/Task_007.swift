//
//  Task_007.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 17.03.2023.
//

/// 7. Reverse Integer:
///
/// Given a signed 32-bit integer x, return x with its digits reversed.
/// If reversing x causes the value to go outside the signed 32-bit integer range [-2^31, 2^(31 - 1)], then return 0.
///
/// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
///
/// Constraints:
/// 1) -231 <= x <= 231 - 1


import Foundation

class Task_007 {
    func reverse(_ x: Int) -> Int {
        if x > Int32.max || x < Int32.min { return 0 }
        
        let minInt32 = String(Int32.min)
        let maxInt32 = String(Int32.max)
        
        var reverseStr = String(String(x).reversed())
        if reverseStr.last == "-" {
            if reverseStr.count > 11 { return 0 }
            reverseStr = "-\(String(reverseStr.dropLast(1)))"
            
            if reverseStr.count == minInt32.count && reverseStr > minInt32 { return 0 }
        }
        else if reverseStr.count > 10 { return 0 }
        else if reverseStr.count == maxInt32.count && reverseStr > maxInt32 { return 0 }
        
        guard let result = Int(reverseStr) else { return 0 }
        return result
    }
}
