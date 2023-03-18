//
//  Tasks_001_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 18.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class Task_001_Tests: XCTestCase {
    var task: Task_001!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_001()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_twoSum() throws {
        XCTAssertEqual(task.twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(task.twoSum([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(task.twoSum([3, 3], 6), [0, 1])
        XCTAssertEqual(task.twoSum([-1, -2, -3, -4, -5], -8), [2, 4])
    }
}
