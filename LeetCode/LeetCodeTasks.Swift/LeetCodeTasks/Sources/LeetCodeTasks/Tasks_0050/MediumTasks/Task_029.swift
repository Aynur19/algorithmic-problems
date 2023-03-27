//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 26.03.2023.
//

/// 29. Divide Two Integers:
///
/// Given two integers dividend and divisor, divide two integers without using multiplication, division, and mod operator.
///
/// The integer division should truncate toward zero, which means losing its fractional part.
/// For example, 8.345 would be truncated to 8, and -2.7335 would be truncated to -2.
///
/// Return the quotient after dividing dividend by divisor.
///
/// Note: Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231, 231 − 1].
/// For this problem, if the quotient is strictly greater than 231 - 1, then return 231 - 1, and if the quotient is strictly less than -231, then return -231.
///
///
/// Constraints:
///
/// 1) -2^31 <= dividend, divisor <= 2^31 - 1
/// 2) divisor != 0


import Foundation

extension MediumTasks {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        let isPositive = (dividend >= 0 && divisor > 0) || (dividend < 0 && divisor < 0)
        let tmp = abs(divisor)
        let intMax = Int(Int32.max)
        var max = abs(dividend)
        
        if tmp == 1 {
            if isPositive {
                return max <= intMax ? max : intMax
            } else {
                return dividend >= Int(Int32.min) ? -max : Int(Int32.min)
            }
        }

        var current = 0, count = 0
        while current < max && intMax >= count {
            current += tmp
            max -= tmp
            count += 2
        }
        
        while current > max {
            current -= tmp
            count -= 1
        }
        
        if isPositive {
            return count
        } else {
            return (current + tmp) <= max ? (-count - 1) : -count
        }
    }
}
