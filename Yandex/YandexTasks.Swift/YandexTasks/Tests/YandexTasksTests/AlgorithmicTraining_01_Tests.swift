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
    func test_Task1() throws {
        XCTAssertEqual(task.task1(3, ["APPLICATION_FINISHED_LAUNCHING",
                                      "111",
                                      "APPLICATION_TERMINATED",
                                      "111",
                                      "APPLICATION_FINISHED_LAUNCHING",
                                      "111"]), 50.0)
        
        XCTAssertEqual(task.task1(6, ["APPLICATION_FINISHED_LAUNCHING",
                                      "111",
                                      "UI_SHOWN",
                                      "111",
                                      "APPLICATION_FINISHED_LAUNCHING",
                                      "1337",
                                      "APPLICATION_TERMINATED",
                                      "1337",
                                      "PUSH_RECIEVED",
                                      "111",
                                      "APPLICATION_TERMINATED",
                                      "111"]), 0.0)

    }
    
    func test_problem_E() throws {
        XCTAssertEqual(task.problem_E("89 20 41 1 11"), [2, 3])
        XCTAssertEqual(task.problem_E("11 1 1 1 1"), [0, 1])
        XCTAssertEqual(task.problem_E("3 2 2 2 1"), [-1, -1])
    }
    
    func test_problem_D() throws {
        XCTAssertEqual(task.problem_D(["1", "0", "0"]), ["0"])
        XCTAssertEqual(task.problem_D(["1", "2", "3"]), ["7"])
        XCTAssertEqual(task.problem_D(["1", "2", "-3"]), ["NO SOLUTION"])
        XCTAssertEqual(task.problem_D(["3", "3", "3"]), ["2"])
        XCTAssertEqual(task.problem_D(["0", "4", "2"]), ["MANY SOLUTIONS"])
        XCTAssertEqual(task.problem_D(["1", "0", "5"]), ["25"])
        XCTAssertEqual(task.problem_D(["-1", "0", "5"]), ["-25"])
        XCTAssertEqual(task.problem_D(["-1", "5", "5"]), ["-20"])
        XCTAssertEqual(task.problem_D(["-1", "-5", "5"]), ["-30"])
        XCTAssertEqual(task.problem_D(["1", "1", "1"]), ["0"])
        XCTAssertEqual(task.problem_D(["-1", "1", "1"]), ["0"])
        XCTAssertEqual(task.problem_D(["1", "-1", "1"]), ["2"])
        XCTAssertEqual(task.problem_D(["-1", "-1", "1"]), ["-2"])
        XCTAssertEqual(task.problem_D(["6", "1", "10"]), ["NO SOLUTION"])
    }
    
    func test_problem_C() throws {
        XCTAssertEqual(task.problem_C(["8(495)430-23-97", "+7-4-9-5-43-023-97", "4-3-0-2-3-9-7", "8-495-430"]),
                       ["YES", "YES", "NO"])
        XCTAssertEqual(task.problem_C(["86406361642", "83341994118", "86406361642", "83341994118"]),
                       ["NO", "YES", "NO"])
        XCTAssertEqual(task.problem_C(["+78047952807", "+78047952807", "+76147514928", "88047952807"]),
                       ["YES", "NO", "YES"])
    }
    
    func test_problem_B() throws {
        XCTAssertEqual(task.problem_B("3", "4", "5"), "YES")
        XCTAssertEqual(task.problem_B("3", "5", "4"), "YES")
        XCTAssertEqual(task.problem_B("4", "5", "3"), "YES")
    }
    
    func test_problem_A() throws {
        XCTAssertEqual(task.problem_A("10 20", "heat"), 20)
        XCTAssertEqual(task.problem_A("10 20", "freeze"), 10)
        XCTAssertEqual(task.problem_A("10 20", "auto"), 20)
        XCTAssertEqual(task.problem_A("10 20", "fan"), 10)
    }
}
