//
//  Task_002_Tests.swift
//  LeetCodeTasks.Swift.Tests
//
//  Created by Aynur Nasybullin on 15.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class Task_002_Tests: XCTestCase {
    var task: Task_002!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = Task_002()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
    
    func test_addTwoNumbers_04() throws {
        let l1 = ListNode(2, ListNode(4, ListNode(9)))
        let l2 = ListNode(5, ListNode(6, ListNode(4, ListNode(9))))
        
        let expected = ListNode(7, ListNode(0, ListNode(4, ListNode(0, ListNode(1)))))
        let actual = task.addTwoNumbers(l1, l2)
        
        try equalLists(actual, expected)
    }
    
    func test_addTwoNumbers_03() throws {
        let l1 = ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9)))))))
        let l2 = ListNode(9, ListNode(9, ListNode(9, ListNode(9))))
        
        let expected = ListNode(8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1))))))))
        let actual = task.addTwoNumbers(l1, l2)
        
        try equalLists(actual, expected)
    }
    
    func test_addTwoNumbers_02() throws {
        let l1 = ListNode()
        let l2 = ListNode()
        
        let expected = ListNode()
        let actual = task.addTwoNumbers(l1, l2)
        
        try equalLists(actual, expected)
    }
    
    func test_addTwoNumbers_01() throws {
        let l1 = ListNode(2, ListNode(4, ListNode(3)))
        let l2 = ListNode(5, ListNode(6, ListNode(4)))
        
        let expected = ListNode(7, ListNode(0, ListNode(8)))
        let actual = task.addTwoNumbers(l1, l2)
        
        try equalLists(actual, expected)
    }
    
    func equalLists(_ l1: ListNode?, _ l2: ListNode) throws {
        var actual = l1
        var expected = l2
        
        XCTAssertEqual(actual?.val, expected.val)
        while expected.next != nil {
            XCTAssertEqual(actual?.val, expected.val)
            expected = expected.next!
            actual = actual?.next!
        }
    }
}
