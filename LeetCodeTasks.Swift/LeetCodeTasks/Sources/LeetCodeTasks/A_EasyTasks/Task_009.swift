//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 18.03.2023.
//

/// 9. Palindrome Number:
///
/// Given an integer x, return true if x is a palindrome, and false otherwise.
///
/// Constraints:
/// 1) -231 <= x <= 231 - 1


import Foundation

class Task_009 {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 || x >= 10 && x % 10 == 0 { return false }
        
        var num2 = x % 10
        var num1 = x / 10

        while num1 > 0 {
            num2 = num2 * 10 + num1 % 10
            num1 /= 10
        }

        return x == num2
    }
}
