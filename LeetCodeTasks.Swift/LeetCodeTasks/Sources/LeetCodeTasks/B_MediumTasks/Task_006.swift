//
//  Task_006.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 17.03.2023.
//

/// 6. Zigzag Conversion:
///
/// The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this:
/// (you may want to display this pattern in a fixed font for better legibility)
///
//  P   A   H   N
//  A P L S I I G
//  Y   I   R
///
/// And then read line by line: "PAHNAPLSIIGYIR"
///
/// Write the code that will take a string and make this conversion given a number of rows: string convert(string s, int numRows);
///
/// Constraints:
/// 1) 1 <= s.length <= 1000
/// 2) s consists of English letters (lower-case and upper-case), ',' and '.'.
/// 3) 1 <= numRows <= 1000


import Foundation

extension MediumTasks {
    func convert(_ s: String, _ numRows: Int) -> String {
        if s.count < 2 || numRows < 2 { return s }

        let chars = Array(s)
        var result = ""
        var words: [[Character]] = []
        var k = 0

        for _ in 0..<numRows { words.append([]) }
        for i in 0..<chars.count {
            words[abs(k % numRows)].append(chars[i])

            k += 1
            if k == numRows - 1 { k = 1 - numRows }
        }

        words.forEach { word in result.append(String(word)) }

        return result
    }
}
