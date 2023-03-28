//
//  Task_AT_02_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 27.03.2023.
//

import XCTest
@testable import YandexTasks

final class AlgorithmicTraining_02A_Tests: XCTestCase {

    public var task: AlgorithmicTraining_02A!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = AlgorithmicTraining_02A()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}



extension AlgorithmicTraining_02A_Tests {
    func test_problem_D() throws {
        XCTAssertEqual(task.problem_D("4", "1 5 2 1"), 1)
        XCTAssertEqual(task.problem_D("4", "5 12 4 3"), 24)
    }

    func test_problem_C() throws {
        XCTAssertEqual(task.problem_C(3, ["1 1", "1 2", "2 1"]), 8)
        XCTAssertEqual(task.problem_C(1, ["8 8"]), 4)
    }
    
    func test_problem_B() throws {
        XCTAssertEqual(task.problem_B("mama", "amamam"), "m")
        XCTAssertEqual(task.problem_B("ura", "mura"), "mura")
        XCTAssertEqual(task.problem_B("computer", "comp"), "comp")
        XCTAssertEqual(task.problem_B("ejudge", "judge"), "")
        XCTAssertEqual(task.problem_B("m", "mmm"), "")
    }
    
    func test_problem_A() throws {
        XCTAssertEqual(task.problem_A("4 2", "45 52 47 46"), 7)
    }
}
