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
    
    
    //*************************** TASK 027 ***************************
    func test_removeElement_01() throws {
        var nums = [3, 2, 2, 3]
        let expectedNums = [2, 2]
        let k = task.removeElement(&nums, 3)
        
        XCTAssertEqual(k, expectedNums.count)
        for i in 0..<k {
            XCTAssertEqual(nums[i], expectedNums[i])
        }
    }
    
    func test_removeElement_02() throws {
        var nums = [0, 1, 2, 2, 3, 0, 4, 2]
        let expectedNums = [0, 1, 3, 0, 4]
        let k = task.removeElement(&nums, 2)
        
        XCTAssertEqual(k, expectedNums.count)
        for i in 0..<k {
            XCTAssertEqual(nums[i], expectedNums[i])
        }
    }
    //*************************** TASK 027 ***************************
    
    
    //*************************** TASK 026 ***************************
    func test_removeDuplicates_01() throws {
        var nums = [1, 1, 2]
        let expectedNums = [1, 2]
        let k = task.removeDuplicates(&nums)
        
        XCTAssertEqual(k, expectedNums.count)
        for i in 0..<k {
            XCTAssertEqual(nums[i], expectedNums[i])
        }
    }
    
    func test_removeDuplicates_02() {
        var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        let expectedNums = [0, 1, 2, 3, 4]
        let k = task.removeDuplicates(&nums)

        XCTAssertEqual(k, expectedNums.count)
        for i in 0..<k {
            XCTAssertEqual(nums[i], expectedNums[i])
        }
    }
    //*************************** TASK 026 ***************************
    
    
    //*************************** TASK 021 ***************************
    func test_mergeTwoLists_01() {
        let l1 = ListNode(1, ListNode(2, ListNode(3)))
        let l2 = ListNode(1, ListNode(3, ListNode(4)))
        let actual = task.mergeTwoLists(l1, l2)
        let expected = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3, ListNode(4))))))
        
        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    
    func test_mergeTwoLists_02() {
        let l1: ListNode? = nil
        let l2: ListNode? = nil
        let actual = task.mergeTwoLists(l1, l2)
        let expected: ListNode? = nil
        
        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    
    func test_mergeTwoLists_03() {
        let l1: ListNode? = nil
        let l2: ListNode? = ListNode()
        let actual = task.mergeTwoLists(l1, l2)
        let expected: ListNode? = ListNode()
        
        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    //*************************** TASK 021 ***************************
    
    //*************************** TASK 020 ***************************
    func test_isValid() {
        XCTAssertEqual(task.isValid("()"), true)
        XCTAssertEqual(task.isValid("()[]{}"), true)
        XCTAssertEqual(task.isValid("(]"), false)
    }
    //*************************** TASK 020 ***************************
    
    //*************************** TASK 014 ***************************
    func test_longestCommonPrefix() throws {
        XCTAssertEqual(task.longestCommonPrefix(["flower","flow","flight"]), "fl")
        XCTAssertEqual(task.longestCommonPrefix(["dog","racecar","car"]), "")
    }
    //*************************** TASK 014 ***************************
    
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
