//
//  Tests.LeetCode75.swift
//  LeetCode.Swift.Tests
//
//  Created by Aynur Nasybullin on 04.08.2023.
//

import XCTest
@testable import LeetCode_Swift

final class TestsLeetCode75: XCTestCase {
    
    // MARK: Problem 1431: Kids With the Greatest Number of Candies
    lazy var testsData_problem_1431: [(candies: [Int], extraCandies: Int, result: [Bool])] = {
        var testsData = [(candies: [Int], extraCandies: Int, result: [Bool])]()
        
        testsData.append((candies: [2, 3, 5, 1, 3], extraCandies: 3, result: [true, true, true, false, true]))
        testsData.append((candies: [4, 2, 1, 1, 2], extraCandies: 1, result: [true, false, false, false, false]))
        testsData.append((candies: [12, 1, 12], extraCandies: 10, result: [true, false, true]))
        
        return testsData
    }()
    
    func tests_problem_1431_kidsWithCandies() throws {
        for data in testsData_problem_1431 {
            XCTAssertEqual(problem_1431_kidsWithCandies(data.candies, data.extraCandies), data.result)
        }
    }
    
    
    // MARK: Problem 1071: Merge Strings Alternately
    lazy var testsData_problem_1071: [(str1: String, str2: String, result: String)] = {
        var testsData = [(str1: String, str2: String, result: String)]()
        
        testsData.append((str1: "ABCABC", str2: "ABC", result: "ABC"))
        testsData.append((str1: "ABABAB", str2: "ABAB", result: "AB"))
        testsData.append((str1: "LEET", str2: "CODE", result: ""))
        testsData.append((str1: "TAUXXTAUXXTAUXXTAUXXTAUXX", str2: "TAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXX", result: "TAUXX"))
        testsData.append((str1: "AAAAAAAAA", str2: "AAACCC", result: ""))
        
        return testsData
    }()
    
    func tests_problem_1071_gcdOfStrings() throws {
        for data in testsData_problem_1071 {
            XCTAssertEqual(problem_1071_gcdOfStrings(data.str1, data.str2), data.result)
        }
    }

    
    // MARK: Problem 1768: Merge Strings Alternately
    lazy var testsData_problem_1768: [(word1: String, word2: String, result: String)] = {
        var testsData = [(word1: String, word2: String, result: String)]()
        
        testsData.append((word1: "abc", word2: "pqr", result: "apbqcr"))
        testsData.append((word1: "ab", word2: "pqrs", result: "apbqrs"))
        testsData.append((word1: "abcd", word2: "pq", result: "apbqcd"))
        
        return testsData
    }()
    
    func tests_problem_1768_mergeAlternately() throws {
        for data in testsData_problem_1768 {
            XCTAssertEqual(problem_1768_mergeAlternately(data.word1, data.word2), data.result)
        }
    }
}
