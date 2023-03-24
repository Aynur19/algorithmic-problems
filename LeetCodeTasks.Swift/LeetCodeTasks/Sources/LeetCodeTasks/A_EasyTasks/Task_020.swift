//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 24.03.2023.
//

/// 20. Valid Parentheses:
///
/// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
///
/// An input string is valid if:
/// 1) Open brackets must be closed by the same type of brackets.
/// 2) Open brackets must be closed in the correct order.
/// 3) Every close bracket has a corresponding open bracket of the same type.
///
///
/// Constraints:
/// 1) 1 <= s.length <= 10^4
/// 2) s consists of parentheses only '()[]{}'.


import Foundation

extension EasyTasks {
    func isValid(_ s: String) -> Bool {
        let open: [Character] = ["[", "{", "("]
        let dict: [Character:Character] = ["]": "[", "}": "{", ")": "("]
        guard s.count > 1, open.contains(s.first!) else { return false }

        let chars = Array(s)
        var tmp: [Character] = []
        
        for i in 0..<chars.count {
            if open.contains(chars[i]) {
                tmp.append(chars[i])
            } else if tmp.last == dict[chars[i]] {
                tmp.removeLast()
            } else { return false }
        }
        
        return tmp.isEmpty
    }
}
