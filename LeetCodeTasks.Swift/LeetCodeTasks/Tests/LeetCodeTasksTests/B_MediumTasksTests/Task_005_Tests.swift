//
//  Task_005_Tests.swift
//  LeetCodeTasks.Swift.Tests
//
//  Created by Aynur Nasybullin on 16.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class Task_005_Tests: XCTestCase {
    var task: Task_005!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_005()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_longestPalindrome() throws {
        XCTAssertTrue(["a", "c"].firstIndex(of: task.longestPalindrome("ac")) != nil)
        XCTAssertTrue(["bab", "aba"].firstIndex(of: task.longestPalindrome("babad")) != nil)
        XCTAssertEqual(task.longestPalindrome("cbbd"), "bb")
        XCTAssertEqual(task.longestPalindrome("aaaa"), "aaaa")
        XCTAssertEqual(task.longestPalindrome("abcda"), "a")
        XCTAssertEqual(task.longestPalindrome("aaabaaaa"), "aaabaaa")
    }
}
