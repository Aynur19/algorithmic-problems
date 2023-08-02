//
//  LeetCode_Swift_Tests.swift
//  LeetCode.Swift.Tests
//
//  Created by Aynur Nasybullin on 28.07.2023.
//

import XCTest
@testable import LeetCode_Swift

final class TestsLowProblems: XCTestCase {

    // (nums, target, output)
    var tests_problem001_twoSumData: [([Int], Int, [Int])] = [
        ([2, 7, 11, 15], 9, [0, 1]),
        ([3, 2, 4], 6, [1, 2]),
        ([3, 3], 6, [0, 1])
    ]
    
    func tests_problem001_twoSum() throws {
        for data in tests_problem001_twoSumData {
            XCTAssertEqual(twoSum(data.0, data.1), data.2, "\(data)")
        }
    }
}
