//
//  Task_006_Tests.swift
//  LeetCodeTasks.Swift.Tests
//
//  Created by Aynur Nasybullin on 17.03.2023.
//

import XCTest

@testable import LeetCodeTasks_Swift

final class Task_006_Tests: XCTestCase {
    var task: Task_006!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_006()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_convert() throws {
        XCTAssertEqual(task.convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
        XCTAssertEqual(task.convert("PAYPALISHIRING", 4), "PINALSIGYAHRPI")
        XCTAssertEqual(task.convert("A", 1), "A")
    }
}
