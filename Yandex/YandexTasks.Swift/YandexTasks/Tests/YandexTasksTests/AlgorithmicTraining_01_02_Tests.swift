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
        XCTAssertEqual(task.problem_J(3, ["440",
                                          "220 closer",
                                          "300 further"]), [30.0, 260.0])
        XCTAssertEqual(task.problem_J(4, ["554",
                                          "880 further",
                                          "440 closer",
                                          "622 closer"]), [531.0, 660.0])
    }
    
    func test_problem_I() throws {
        XCTAssertEqual(task.problem_I([3, 2, 2], [1, 1, 2, 2]),
                       ["* 2",
                        "2 *",
                        "1 1"])
        XCTAssertEqual(task.problem_I([2, 2, 0], []),
                       ["0 0",
                        "0 0"])
        XCTAssertEqual(task.problem_I([4, 4, 4], [1, 3, 2, 1, 4, 2, 4, 4]),
                       ["1 2 * 1",
                        "* 2 1 1",
                        "2 2 2 1",
                        "1 * 2 *"])
    }
    
    func test_problem_H() throws {
        XCTAssertEqual(task.problem_H([3, 5, 1, 7, 9, 0, 9, -3, 10]), [10, 9, 9])
        XCTAssertEqual(task.problem_H([-5, -30000, -12]), [-5, -30000, -12])
        XCTAssertEqual(task.problem_H([1, 2, 3]), [1, 2, 3])
    }
    
    func test_problem_G() throws {
        XCTAssertEqual(task.problem_G([4, 3, 5, 2, 5]), [5, 5])
        XCTAssertEqual(task.problem_G([-4, 3, -5, 2, 5]), [-5, -4])
        XCTAssertEqual(task.problem_G([12288, -10075, 29710, 15686, -18900, -17715, 15992, 24431, 6220, 28403,
                                       -23148, 18480, -22905, 5411, -7602, 15560, -26674, 11109, -4323, 6146,
                                       -1523, 4312, 10666, -15343, -17679, 7284, 20709, -7103, 24305, 14334,
                                       -12281, 17314, 26061, 25616, 17453, 16618, -24230, -19788, 21172, 11339,
                                       2202, -22442, -20997, 1879, -8773, -8736, 5310, -23372, 12621, -25596,
                                       -28609, -13309,-13, 10336, 15812, -21193, 21576, -1897, -12311, -6988,
                                       -25143, -3501, 23231, 26610, 12618, 25834, -29140, 21011, 23427, 1494,
                                       15215, 23013, -15739, 8325, 5359, -12932, 18111, -72, -12509, 20116, 24390,
                                       1920, 17487, 25536, 24934, -6784, -16417, -2222, -16569, -25594, 4491,
                                       14249, -28927, 27281, 3297, 5998, 6259, 4577, 12415, 3779, -8856, 3994,
                                       19941, 11047, 2866, -24443, -17299, -9556, 12244, 6376, -13694, -14647,
                                       -22225, 21872, 7543, -6935, 17736, -2464, 9390, 1133, 18202, -9733, -26011,
                                       13474, 29793, -26628, -26124, 27776, 970, 14277, -23213, 775, -9318, 29014,
                                       -5645, -27027, -21822, -17450, -5, -655, 22807, -20981, 16310, 27605,
                                       -18393, 914, 7323, 599, -12503, -28684, 5835, -5627, 25891, -11801, 21243,
                                       -21506, 22542, -5097, 8115, 178, 10427, 25808, 10836, -11213, 18488, 21293,
                                       14652, 12260, 42, 21034, 8396, -27956, 13670, -296, -757, 18076, -15597,
                                       4135, -25222, -19603, 8007, 6012, 2704, 28935, 16188, -20848, 13502, -11950,
                                       -24466, 5440, 26348, 27378, 7990, -11523, -26393]), [29710, 29793])
    }
    
    func test_problem_F() throws {
        XCTAssertEqual(task.problem_F(9, [1, 2, 3, 4, 5, 4, 3, 2, 1]), [])
        XCTAssertEqual(task.problem_F(5, [1, 2, 1, 2, 2]), [1, 2, 1])
        XCTAssertEqual(task.problem_F(5, [1, 2, 3, 4, 5]), [4, 3, 2, 1])
    }
    
    func test_problem_E() throws {
        XCTAssertEqual(task.problem_E(7, "10 20 15 10 30 5 1"), 6)
        XCTAssertEqual(task.problem_E(3, "15 15 10"), 1)
        XCTAssertEqual(task.problem_E(3, "10 15 20"), 0)
        XCTAssertEqual(task.problem_E(3, "40 15 20"), 0)
        XCTAssertEqual(task.problem_E(3, "10 10 10"), 0)
        XCTAssertEqual(task.problem_E(8, "15 55 15 45 25 75 55 45"), 2)
        XCTAssertEqual(task.problem_E(3, "40 35 20"), 2)
        XCTAssertEqual(task.problem_E(4, "10 15 15 10"), 1)
        XCTAssertEqual(task.problem_E(4, "15 15 15 10"), 1)
        XCTAssertEqual(task.problem_E(4, "20 15 15 10"), 2)
        XCTAssertEqual(task.problem_E(4, "20 20 15 10"), 3)
        XCTAssertEqual(task.problem_E(4, "20 20 155 15"), 0)
        XCTAssertEqual(task.problem_E(4, "20 20 155 15"), 0)
        XCTAssertEqual(task.problem_E(4, "20 20 155 155 6"), 1)
    }
    
    func test_problem_D() throws {
        XCTAssertEqual(task.problem_D("1 2 3 4 5"), 0)
        XCTAssertEqual(task.problem_D("5 4 3 2 1"), 0)
        XCTAssertEqual(task.problem_D("1 5 1 5 1"), 2)
        XCTAssertEqual(task.problem_D("1 5 7 5 1"), 1)
        XCTAssertEqual(task.problem_D("19 15 7 15 19"), 0)
        XCTAssertEqual(task.problem_D("19 15 17 15 19"), 1)
        XCTAssertEqual(task.problem_D(""), 0)
        XCTAssertEqual(task.problem_D("19"), 0)
        XCTAssertEqual(task.problem_D("19 15"), 0)
        XCTAssertEqual(task.problem_D("19 15 17"), 0)
        XCTAssertEqual(task.problem_D("15 15 15"), 0)
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
