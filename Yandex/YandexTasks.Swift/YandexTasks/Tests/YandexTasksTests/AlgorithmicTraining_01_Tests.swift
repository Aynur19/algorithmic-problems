//
//  AlgorithmicTraining_01_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 29.03.2023.
//

import XCTest
@testable import YandexTasks

final class AlgorithmicTraining_01_Tests: XCTestCase {
    public var task: AlgorithmicTraining_01!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = AlgorithmicTraining_01()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}



extension AlgorithmicTraining_01_Tests {
    func test_problem_A() throws {
        XCTAssertEqual(task.problem_A("10 20", "heat"), 20)
        XCTAssertEqual(task.problem_A("10 20", "freeze"), 10)
        XCTAssertEqual(task.problem_A("10 20", "auto"), 20)
        XCTAssertEqual(task.problem_A("10 20", "fan"), 10)
    }
}
