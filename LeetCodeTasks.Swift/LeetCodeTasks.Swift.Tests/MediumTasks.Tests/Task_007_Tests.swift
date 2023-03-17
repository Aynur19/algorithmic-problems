//
//  Task_007_Tests.swift
//  LeetCodeTasks.Swift.Tests
//
//  Created by Aynur Nasybullin on 17.03.2023.
//

import XCTest
@testable import LeetCodeTasks_Swift

final class Task_007_Tests: XCTestCase {
    var task: Task_007!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_007()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_reverse() throws {
//        XCTAssertEqual(task.reverse(123), 321)
//        XCTAssertEqual(task.reverse(-123), -321)
//        XCTAssertEqual(task.reverse(120), 21)
        XCTAssertEqual(task.reverse(1534236469), 0)
    }
}
