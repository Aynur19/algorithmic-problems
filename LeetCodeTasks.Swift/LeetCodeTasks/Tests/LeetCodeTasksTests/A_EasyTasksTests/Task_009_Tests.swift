//
//  Task_009_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 18.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class Task_009_Tests: XCTestCase {
    var task: Task_009!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_009()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_twoSum() throws {
        XCTAssertEqual(task.isPalindrome(121), true)
        XCTAssertEqual(task.isPalindrome(-121), false)
        XCTAssertEqual(task.isPalindrome(10), false)
        XCTAssertEqual(task.isPalindrome(0), true)
        XCTAssertEqual(task.isPalindrome(123), false)
        XCTAssertEqual(task.isPalindrome(1), true)
    }
}
