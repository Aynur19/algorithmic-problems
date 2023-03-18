//
//  Task_008_Tests.swift
//  LeetCodeTasks.Swift.Tests
//
//  Created by Aynur Nasybullin on 17.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class Task_008_Tests: XCTestCase {
    var task: Task_008!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_008()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_myAtoi() throws {
        XCTAssertEqual(task.myAtoi("42"), 42)
        XCTAssertEqual(task.myAtoi("   -42"), -42)
        XCTAssertEqual(task.myAtoi("4193 with words"), 4193)
        XCTAssertEqual(task.myAtoi("-91283472332"), -2147483648)
        XCTAssertEqual(task.myAtoi("21474836460"), 2147483647)
        XCTAssertEqual(task.myAtoi("00000-42a1234"), 0)
        XCTAssertEqual(task.myAtoi("20000000000000000000"), 2147483647)
    }
}
