//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 22.03.2023.
//

/// 17. Letter Combinations of a Phone Number:
///
/// Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.
///
/// A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
///
///
/// Constraints:
/// 1) 0 <= digits.length <= 4
/// 2) digits[i] is a digit in the range ['2', '9'].


import Foundation

extension MediumTasks {
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else { return [] }
        
        let phoneNumbers: [Character:[Character]] = [
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"],
        ]
        let digitChars = Array(digits)
        var combinations: [[Character]] = []
        var maxCount = 1
        
        digitChars.forEach { digit in
            maxCount *= phoneNumbers[digit]!.count
            for _ in combinations.count..<maxCount {
                combinations.append([])
            }
        }
        
        var rep1 = combinations.count, rep2 = 1, start = 0, end = 0
        for i in 0..<digitChars.count {
            let chars = phoneNumbers[digitChars[i]]!
            start = 0
            end = 0
            for _ in 0..<rep2 {
                for j in 0..<chars.count {
                    end += rep1 / chars.count
                    for k in start..<end {
                        combinations[k].append(chars[j])
                    }
                    start = end
                }
            }

            rep1 /= chars.count
            rep2 *= chars.count
        }
        
        var result: [String] = []
        for i in 0..<combinations.count {
            result.append(String(combinations[i]))
        }
        
        return result
    }
}
