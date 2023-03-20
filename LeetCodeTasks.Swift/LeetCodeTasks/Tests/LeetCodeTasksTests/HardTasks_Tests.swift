//
//  HardTasks_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 20.03.2023.
//


import XCTest
@testable import LeetCodeTasks

final class HardTasks_Tests: XCTestCase {
    var task: HardTasks!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = HardTasks()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}


extension HardTasks_Tests {
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    func test_isMatch() throws {
        XCTAssertEqual(task.isMatch("aa", "a"), false)
        XCTAssertEqual(task.isMatch("aa", "a*"), true)
        XCTAssertEqual(task.isMatch("ab", ".*"), true)
        XCTAssertEqual(task.isMatch("aab", "c*a*b"), true)
        XCTAssertEqual(task.isMatch("ab", ".*c"), false)
        XCTAssertEqual(task.isMatch("aaa", "a*a"), true)
        XCTAssertEqual(task.isMatch("aaa", "ab*a"), false)
        XCTAssertEqual(task.isMatch("aaa", "ab*a*c*a"), true)
        XCTAssertEqual(task.isMatch("mississippi", "mis*is*ip*."), true)
        XCTAssertEqual(task.isMatch("abcdede", "ab.*de"), true)
        XCTAssertEqual(task.isMatch("aba", ".*.*"), true)
        XCTAssertEqual(task.isMatch("a", "..*"), true)
        XCTAssertEqual(task.isMatch("acaabbaccbbacaabbbb", "a*.*b*.*a*aa*a*"), false)
        XCTAssertEqual(task.isMatch("aabcbcbcaccbcaabc", ".*a*aa*.*b*.c*.*a*"), true)
        XCTAssertEqual(task.isMatch("bbbba", ".*a*a"), true)
        XCTAssertEqual(task.isMatch("b", "aaa."), false)
        XCTAssertEqual(task.isMatch("ab", ".*.."), true)
    }
    //*************************** TASK *** ***************************
    
    
    //*************************** TASK 004 ***************************
    func test_findMedianSortedArrays() throws {
        XCTAssertEqual(task.findMedianSortedArrays([1, 3], [2]), 2.0)
        XCTAssertEqual(task.findMedianSortedArrays([1, 2], [3, 4]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1]), 1.0)
        XCTAssertEqual(task.findMedianSortedArrays([], [2, 3]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1, 2, 3, 4]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1, 2, 3, 4, 5]), 3.0)
    }
    //*************************** TASK 004 ***************************
}
