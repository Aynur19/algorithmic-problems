//
//  d.swift
//  
//
//  Created by Aynur Nasybullin on 08.04.2023.
//

import XCTest
@testable import YandexTasks

final class AlgorithmicTraining_01_03_Tests: XCTestCase {
    public var task: AlgorithmicTraining_01_03!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = AlgorithmicTraining_01_03()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}

extension AlgorithmicTraining_01_03_Tests {
    func test_problem_J() throws {
    }
    
    func test_problem_I() throws {
    }
    
    func test_problem_H() throws {
    }
    
    func test_problem_G() throws {
    }
    
    func test_problem_F() throws {
    }
    
    func test_problem_E() throws {
    }
    
    func test_problem_D() throws {
        
    }
    
    func test_problem_C() throws {
        XCTAssertEqual(task.problem_C("0 1 10 9", "1 3 0"), [[0, 1], [9, 10], [3]])
        XCTAssertEqual(task.problem_C("1 2", "2 3"), [[2], [1], [3]])
        XCTAssertEqual(task.problem_C("", ""), [[], [], []])
    }
    
    func test_problem_B() throws {
        XCTAssertEqual(task.problem_B("1 3 2", "4 3 2"), [2, 3])
        XCTAssertEqual(task.problem_B("1 2 6 4 5 7", "10 2 3 4 8"), [2, 4])
    }
    
    func test_problem_A() throws {
        XCTAssertEqual(task.problem_A("1 2 3 2 1"), 3)
        XCTAssertEqual(task.problem_A("1 2 3 4 5 6 7 8 9 10"), 10)
        XCTAssertEqual(task.problem_A("1 2 3 4 5 1 2 1 2 7 3"), 6)
    }
}
