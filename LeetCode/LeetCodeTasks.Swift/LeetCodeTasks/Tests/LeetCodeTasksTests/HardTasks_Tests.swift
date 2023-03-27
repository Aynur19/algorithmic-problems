//
//  HardTasks_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 20.03.2023.
//


import XCTest
@testable import LeetCodeTasks

final class HardTasks_Tests: XCTestCase {
    var task: HardTasks!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = HardTasks()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}


extension HardTasks_Tests {
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    
    
    //*************************** TASK 030 ***************************
    func test_findSubstring() throws {
        XCTAssertEqual(task.findSubstring("barfoothefoobarman", ["foo", "bar"]), [0, 9])
        XCTAssertEqual(task.findSubstring("wordgoodgoodgoodbestword", ["word", "good", "best", "word"]), [])
        XCTAssertEqual(task.findSubstring("barfoofoobarthefoobarman", ["bar", "foo", "the"]), [6, 9, 12])
        XCTAssertEqual(task.findSubstring("wordgoodgoodgoodbestword", ["word", "good", "best", "good"]), [8])
    }
    //*************************** TASK 030 ***************************
    
    
    //*************************** TASK 025 ***************************
    func test_reverseKGroup_01() throws {
        let l1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let expected = ListNode(2, ListNode(1, ListNode(4, ListNode(3, ListNode(5)))))
        let actual = task.reverseKGroup(l1, 2)

        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    
    func test_reverseKGroup_02() throws {
        let l1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let expected = ListNode(3, ListNode(2, ListNode(1, ListNode(4, ListNode(5)))))
        let actual = task.reverseKGroup(l1, 3)

        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    //*************************** TASK 025 ***************************
    
    
    //*************************** TASK 023 ***************************
    func test_mergeKLists_01() throws {
        let l1 = ListNode(1, ListNode(4, ListNode(5)))
        let l2 = ListNode(1, ListNode(3, ListNode(4)))
        let l3 = ListNode(2, ListNode(6))
        let expected = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4, ListNode(5, ListNode(6))))))))
        let actual = task.mergeKLists([l1, l2, l3])

        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    
    func test_mergeKLists_02() throws {
        let expected: ListNode? = nil
        let actual = task.mergeKLists([nil])

        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    
    func test_mergeKLists_03() throws {
        let expected: ListNode? = nil
        let actual = task.mergeKLists([])

        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    //*************************** TASK 023 ***************************
    
    
    //*************************** TASK 010 ***************************
    func test_isMatch() throws {
        XCTAssertEqual(task.isMatch("aa", "a"), false)
        XCTAssertEqual(task.isMatch("aa", "a*"), true)
        XCTAssertEqual(task.isMatch("ab", ".*"), true)
        XCTAssertEqual(task.isMatch("aab", "c*a*b"), true)
        XCTAssertEqual(task.isMatch("ab", ".*c"), false)
        XCTAssertEqual(task.isMatch("aaa", "a*a"), true)
        XCTAssertEqual(task.isMatch("aaa", "ab*a"), false)
        XCTAssertEqual(task.isMatch("aaa", "ab*a*c*a"), true)
        XCTAssertEqual(task.isMatch("mississippi", "mis*is*ip*."), true)
        XCTAssertEqual(task.isMatch("abcdede", "ab.*de"), true)
        XCTAssertEqual(task.isMatch("aba", ".*.*"), true)
        XCTAssertEqual(task.isMatch("a", "..*"), true)
        XCTAssertEqual(task.isMatch("acaabbaccbbacaabbbb", "a*.*b*.*a*aa*a*"), false)
        XCTAssertEqual(task.isMatch("aabcbcbcaccbcaabc", ".*a*aa*.*b*.c*.*a*"), true)
        XCTAssertEqual(task.isMatch("bbbba", ".*a*a"), true)
        XCTAssertEqual(task.isMatch("b", "aaa."), false)
        XCTAssertEqual(task.isMatch("ab", ".*.."), true)
    }
    //*************************** TASK 010 ***************************
    
    
    //*************************** TASK 004 ***************************
    func test_findMedianSortedArrays() throws {
        XCTAssertEqual(task.findMedianSortedArrays([1, 3], [2]), 2.0)
        XCTAssertEqual(task.findMedianSortedArrays([1, 2], [3, 4]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1]), 1.0)
        XCTAssertEqual(task.findMedianSortedArrays([], [2, 3]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1, 2, 3, 4]), 2.5)
        XCTAssertEqual(task.findMedianSortedArrays([], [1, 2, 3, 4, 5]), 3.0)
    }
    //*************************** TASK 004 ***************************
}
