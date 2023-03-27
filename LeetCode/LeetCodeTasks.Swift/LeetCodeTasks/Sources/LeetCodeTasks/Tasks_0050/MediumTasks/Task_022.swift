//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 24.03.2023.
//

/// 22. Generate Parentheses:
///
/// Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
///
///
/// Constraints:
/// 1) 1 <= n <= 8


import Foundation

extension MediumTasks {
    // solution from: https://leetcode.com/problems/generate-parentheses/solutions/1656798/solution-swift-generate-parentheses-test-cases/?languageTags=swift
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else { return [""] }
        var result: [String] = []
        
        for i in 0..<n {
            for l in generateParenthesis(i) {
                for r in generateParenthesis(n - 1 - i) {
                    result.append("(" + l + ")" + r)
                }
            }
        }
        return result
    }
}
