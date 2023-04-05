//
//  AlgorithmicTraining_01_02_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 04.04.2023.
//

import XCTest
@testable import YandexTasks

final class AlgorithmicTraining_01_02_Tests: XCTestCase {
    public var task: AlgorithmicTraining_01_02!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = AlgorithmicTraining_01_02()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}

extension AlgorithmicTraining_01_02_Tests {
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
        XCTAssertEqual(task.problem_C(5, "1 2 3 4 5", 6), 5)
        XCTAssertEqual(task.problem_C(5, "5 4 3 2 1", 3), 3)
    }
    
    func test_problem_B() throws {
        XCTAssertEqual(task.problem_B([-530, -530, -530, -530, -530, -530,
                                      -2000000000]), "CONSTANT")
        XCTAssertEqual(task.problem_B([-530, -530, 530, -530, -530, -530,
                                      -2000000000]), "RANDOM")
        XCTAssertEqual(task.problem_B([-530, -530, 530, 530, 530, 530,
                                      -2000000000]), "WEAKLY ASCENDING")
        
        XCTAssertEqual(task.problem_B([-530, -2000000000]), "CONSTANT")
        XCTAssertEqual(task.problem_B([-530, 530, -2000000000]), "ASCENDING")
        XCTAssertEqual(task.problem_B([530, -530, -2000000000]), "DESCENDING")
        
        XCTAssertEqual(task.problem_B([-530, 530, 530, -2000000000]), "WEAKLY ASCENDING")
        XCTAssertEqual(task.problem_B([530, 530, -530, -2000000000]), "WEAKLY DESCENDING")
        XCTAssertEqual(task.problem_B([-2000000000]), "RANDOM")
    }
    
    func test_problem_A() throws {
        XCTAssertEqual(task.problem_A([1, 7, 9]), "YES")
        XCTAssertEqual(task.problem_A([1, 9, 7]), "NO")
        XCTAssertEqual(task.problem_A([2, 2, 2]), "NO")
    }
}
