//
//  EasyTasks_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 19.03.2023.
//


import XCTest
@testable import LeetCodeTasks

final class EasyTasks_Tests: XCTestCase {
    public var task: EasyTasks!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = EasyTasks()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}

extension EasyTasks_Tests {
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    
    //*************************** TASK 013 ***************************
    func test_romanToInt() throws {
        XCTAssertEqual(task.romanToInt("III"), 3)
        XCTAssertEqual(task.romanToInt("LVIII"), 58)
        XCTAssertEqual(task.romanToInt("MCMXCIV"), 1994)
    }
    //*************************** TASK 013 ***************************
    
    //*************************** TASK 009 ***************************
    func test_isPalindrome() throws {
        XCTAssertEqual(task.isPalindrome(121), true)
        XCTAssertEqual(task.isPalindrome(-121), false)
        XCTAssertEqual(task.isPalindrome(10), false)
        XCTAssertEqual(task.isPalindrome(0), true)
        XCTAssertEqual(task.isPalindrome(123), false)
        XCTAssertEqual(task.isPalindrome(1), true)
    }
    //*************************** TASK 009 ***************************

    //*************************** TASK 001 ***************************
    func test_twoSum() throws {
        XCTAssertEqual(task.twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(task.twoSum([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(task.twoSum([3, 3], 6), [0, 1])
        XCTAssertEqual(task.twoSum([-1, -2, -3, -4, -5], -8), [2, 4])
    }
    //*************************** TASK 001 ***************************
}
