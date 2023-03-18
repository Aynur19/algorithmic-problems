//
//  Task_004_Tests.swift
//  LeetCodeTasks.Swift.Tests
//
//  Created by Aynur Nasybullin on 16.03.2023.
//

import XCTest

@testable import LeetCodeTasks

final class Task_004_Tests: XCTestCase {
    var task: Task_004!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_004()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_findMedianSortedArrays() throws {
        XCTAssertEqual(task.findMedianSortedArrays([1, 3], [2]), 2.0)
        XCTAssertEqual(task.findMedianSortedArrays([1, 2], [3, 4]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1]), 1.0)
        XCTAssertEqual(task.findMedianSortedArrays([], [2, 3]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1, 2, 3, 4]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1, 2, 3, 4, 5]), 3.0)
    }
}
