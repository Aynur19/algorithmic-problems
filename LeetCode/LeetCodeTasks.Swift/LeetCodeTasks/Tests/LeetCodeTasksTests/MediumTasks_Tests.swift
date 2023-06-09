//
//  MediumTasks_Tests.swift
//  
//
//  Created by Aynur Nasybullin on 19.03.2023.
//

import XCTest
@testable import LeetCodeTasks

final class MediumTasks_Tests: XCTestCase {
    public var task: MediumTasks!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        task = MediumTasks()
    }
    
    override func tearDownWithError() throws {
        task = nil
        try super.tearDownWithError()
    }
}
//
extension MediumTasks_Tests {
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    //*************************** TASK *** ***************************
    
    
    //*************************** TASK 029 ***************************
    func test_divide() throws {
        XCTAssertEqual(task.divide(10, 3), 3)
        XCTAssertEqual(task.divide(7, -3), -2)
        XCTAssertEqual(task.divide(-2147483648, -1), 2147483647)
        XCTAssertEqual(task.divide(1, -1), -1)
    }
    //*************************** TASK 029 ***************************
    
    
    //*************************** TASK 023 ***************************
    func test_swapPairs_01() throws {
        let l1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4))))
        let expected = ListNode(2, ListNode(1, ListNode(4, ListNode(3))))
        let actual = task.swapPairs(l1)

        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }

    func test_swapPairs_02() throws {
        let actual = task.swapPairs(nil)

        XCTAssertTrue(ListNode.equalListNodes(l1: nil, l2: actual))
    }
    
    func test_swapPairs_03() throws {
        let l1 = ListNode(1)
        let expected = ListNode(1)
        let actual = task.swapPairs(l1)

        XCTAssertTrue(ListNode.equalListNodes(l1: expected, l2: actual))
    }
    //*************************** TASK 023 ***************************
    
    
    //*************************** TASK 022 ***************************
    func test_generateParenthesis() {
        XCTAssertEqual(task.generateParenthesis(3), ["()()()", "(())()", "((()))", "(()())", "()(())"])
        XCTAssertEqual(task.generateParenthesis(1), ["()"])
        XCTAssertEqual(task.generateParenthesis(2), ["()()", "(())"])        
        XCTAssertEqual(task.generateParenthesis(4), ["()()", "(())"])
    }
    //*************************** TASK 022 ***************************
    
    //*************************** TASK 019 ***************************
    func test_removeNthFromEnd_01() throws {
        let l1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let expected = ListNode(1, ListNode(2, ListNode(3, ListNode(5))))
        let actual = task.removeNthFromEnd(l1, 2)

        try equalLists(actual, expected)
    }

    func test_removeNthFromEnd_02() throws {
        let l1 = ListNode(1)
        let actual = task.removeNthFromEnd(l1, 1)

        XCTAssertNil(actual)
    }

    func test_removeNthFromEnd_03() throws {
        let l1 = ListNode(1, ListNode(2))
        let expected = ListNode(1)
        let actual = task.removeNthFromEnd(l1, 1)

        try equalLists(actual, expected)
    }
    
    func test_removeNthFromEnd_04() throws {
        let l1 = ListNode(1, ListNode(2))
        let expected = ListNode(2)
        let actual = task.removeNthFromEnd(l1, 2)

        try equalLists(actual, expected)
    }
    //*************************** TASK 019 ***************************
    
    //*************************** TASK 018 ***************************
    func test_fourSum() throws { // -3  -1  0  2  5
        XCTAssertEqual(task.fourSum([1, 0, -1, 0, -2, 2], 0), [[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]])
        XCTAssertEqual(task.fourSum([-3, -1, 0, 2, 4, 5], 0), [[-3, -1, 0, 4]])
        XCTAssertEqual(task.fourSum([2, 2, 2, 2, 2], 8), [[2, 2, 2, 2]])
        XCTAssertEqual(task.fourSum([-3, -1, 0, 2, 4, 5], 2), [[-3, -1, 2, 4]])
        XCTAssertEqual(task.fourSum([-3, -2, -1, 0, 0, 1, 2, 3], 0), [[-3, -2, 2, 3], [-3, -1, 1, 3], [-3, 0, 0, 3], [-3, 0, 1, 2], [-2, -1, 0, 3], [-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]])
    }
    //*************************** TASK 018 ***************************
    
    //*************************** TASK *** ***************************
    func test_letterCombinations() throws {
        XCTAssertEqual(task.letterCombinations("23"), ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"])
        XCTAssertEqual(task.letterCombinations(""), [])
        XCTAssertEqual(task.letterCombinations("2"), ["a", "b", "c"])
    }
    //*************************** TASK *** ***************************
    
    //*************************** TASK 016 ***************************
    func test_threeSumClosest() throws {
        XCTAssertEqual(task.threeSumClosest([-1, 2, 1, -4], 1), 2)
        XCTAssertEqual(task.threeSumClosest([0, 0, 0], 1), 0)
    }
    //*************************** TASK 016 ***************************
    
    //*************************** TASK 015 ***************************
    func test_threeSum() throws {
        XCTAssertEqual(task.threeSum([-1, 0, 1, 2, -1, -4]), [[-1, -1, 2], [-1, 0, 1]])
        XCTAssertEqual(task.threeSum([0, 1, 1]), [])
        XCTAssertEqual(task.threeSum([1, 1, -2]), [[-2, 1, 1]])
        XCTAssertEqual(task.threeSum([0, 0, 0, 0]), [[0, 0, 0]])
        XCTAssertEqual(task.threeSum([0, 0, 0]), [[0, 0, 0]])
        XCTAssertEqual(task.threeSum([3, 0, -2, -1, 1, 2]), [[-2, -1, 3], [-2, 0, 2], [-1, 0, 1]])
    }
    //*************************** TASK 015 ***************************
    
    //*************************** TASK 012 ***************************
    func test_intToRoman() throws {
        XCTAssertEqual(task.intToRoman(3), "III")
        XCTAssertEqual(task.intToRoman(58), "LVIII")
        XCTAssertEqual(task.intToRoman(1994), "MCMXCIV")
    }
    //*************************** TASK 012 ***************************
    
    //*************************** TASK 011 ***************************
    func test_maxArea() throws {
        XCTAssertEqual(task.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)
        XCTAssertEqual(task.maxArea([1, 1]), 1)
    }
    //*************************** TASK 011 ***************************
    
    //*************************** TASK 008 ***************************
    func test_myAtoi() throws {
        XCTAssertEqual(task.myAtoi("42"), 42)
        XCTAssertEqual(task.myAtoi("   -42"), -42)
        XCTAssertEqual(task.myAtoi("4193 with words"), 4193)
        XCTAssertEqual(task.myAtoi("-91283472332"), -2147483648)
        XCTAssertEqual(task.myAtoi("21474836460"), 2147483647)
        XCTAssertEqual(task.myAtoi("00000-42a1234"), 0)
        XCTAssertEqual(task.myAtoi("20000000000000000000"), 2147483647)
    }
    //*************************** TASK 008 ***************************
    
    //*************************** TASK 007 ***************************
    func test_reverse() throws {
        XCTAssertEqual(task.reverse(123), 321)
        XCTAssertEqual(task.reverse(-123), -321)
        XCTAssertEqual(task.reverse(120), 21)
        XCTAssertEqual(task.reverse(1534236469), 0)
    }
    //*************************** TASK 007 ***************************
    
    //*************************** TASK 006 ***************************
    func test_convert() throws {
        XCTAssertEqual(task.convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
        XCTAssertEqual(task.convert("PAYPALISHIRING", 4), "PINALSIGYAHRPI")
        XCTAssertEqual(task.convert("A", 1), "A")
    }
    //*************************** TASK 006 ***************************
    
    //*************************** TASK 005 ***************************
    func test_longestPalindrome() throws {
        XCTAssertTrue(["a", "c"].firstIndex(of: task.longestPalindrome("ac")) != nil)
        XCTAssertTrue(["bab", "aba"].firstIndex(of: task.longestPalindrome("babad")) != nil)
        XCTAssertEqual(task.longestPalindrome("cbbd"), "bb")
        XCTAssertEqual(task.longestPalindrome("aaaa"), "aaaa")
        XCTAssertEqual(task.longestPalindrome("abcda"), "a")
        XCTAssertEqual(task.longestPalindrome("aaabaaaa"), "aaabaaa")
    }
    //*************************** TASK 005 ***************************
    
    //*************************** TASK 003 ***************************
    func test_lengthOfLongestSubstring() throws {
        XCTAssertEqual(task.lengthOfLongestSubstring("abcabcbb"), 3)
        XCTAssertEqual(task.lengthOfLongestSubstring("bbbbb"), 1)
        XCTAssertEqual(task.lengthOfLongestSubstring("wwkew"), 3)
        XCTAssertEqual(task.lengthOfLongestSubstring(" "), 1)
        XCTAssertEqual(task.lengthOfLongestSubstring("dvdf"), 3)
        XCTAssertEqual(task.lengthOfLongestSubstring("asjrgapa"), 6)
    }
    //*************************** TASK 003 ***************************
    
    //*************************** TASK 002 ***************************
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
    //*************************** TASK 002 ***************************
}
