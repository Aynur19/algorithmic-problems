//
//  Tests.MediumProblems.swift
//  LeetCode.Swift.Tests
//
//  Created by Aynur Nasybullin on 29.07.2023.
//

import XCTest
@testable import LeetCode_Swift

final class TestsMediumProblems: XCTestCase {
    
    var tests_problems002_addTwoNumbersData: [(l1: ListNode?, l2: ListNode?, result: ListNode?)] = [
        (l1: ListNode(2, ListNode(4, ListNode(3))),
         l2: ListNode(5, ListNode(6, ListNode(4))),
         result: ListNode(7, ListNode(0, ListNode(8)))),

        (l1: ListNode(0),
         l2: ListNode(0),
         result: ListNode(0)),
        
        (l1: ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))),
         l2: ListNode(9, ListNode(9, ListNode(9, ListNode(9)))),
         result: ListNode(8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1)))))))))
    ]

    func tests_problem002_addTwoNumbers() throws {
        for data in tests_problems002_addTwoNumbersData {
            let result = addTwoNumbers(data.l1, data.l2)
            
            var actual: ListNode? = result
            var expected: ListNode? = data.result
            while actual != nil || expected != nil {
                XCTAssertEqual(actual?.val, expected?.val)
                actual = actual?.next
                expected = expected?.next
            }
        }
    }
}
