//
//  Task_010_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 18.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class Task_010_Tests: XCTestCase {
    var task: Task_010!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_010()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
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
}
