//
//  Task_003_Tests.swift
//  LeetCodeTasks.Swift.Tests
//
//  Created by Aynur Nasybullin on 16.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class Task_003_Tests: XCTestCase {
    var task: Task_003!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_003()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_lengthOfLongestSubstring() throws {
        XCTAssertEqual(task.lengthOfLongestSubstring("abcabcbb"), 3)
        XCTAssertEqual(task.lengthOfLongestSubstring("bbbbb"), 1)
        XCTAssertEqual(task.lengthOfLongestSubstring("wwkew"), 3)
        XCTAssertEqual(task.lengthOfLongestSubstring(" "), 1)
        XCTAssertEqual(task.lengthOfLongestSubstring("dvdf"), 3)
        XCTAssertEqual(task.lengthOfLongestSubstring("asjrgapa"), 6)
    }
}
