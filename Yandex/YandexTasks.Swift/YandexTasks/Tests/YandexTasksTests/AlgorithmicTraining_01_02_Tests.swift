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
    }
    
    func test_problem_B() throws {
    }
    
    func test_problem_A() throws {
        XCTAssertEqual(task.problem_A([1, 7, 9]), "YES")
        XCTAssertEqual(task.problem_A([1, 9, 7]), "NO")
        XCTAssertEqual(task.problem_A([2, 2, 2]), "NO")
    }
}
