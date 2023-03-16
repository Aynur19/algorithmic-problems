//
//  Tasks_002.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 15.03.2023.
//

/// 1. Add Two Numbers:
/// You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
///
/// You may assume the two numbers do not contain any leading zero, except the number 0 itself.

import Foundation

class Task_002 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        } else if l2 == nil {
            return l1
        }
        
        let result = l1
        result!.val += l2!.val
        
        var list1 = l1
        var list2 = l2
        
        while list1?.next != nil && list2?.next != nil {
            list1 = list1?.next
            list2 = list2?.next
            
            list1!.val += list2!.val
        }

        list1?.next = addTwoNumbers(list1?.next, list2?.next)
        
        var addedValue = 0
        list1 = result
        
        while list1?.next != nil {
            (list1, addedValue) = cutTo10(list1, addedValue)
        }
        
        if list1 != nil {
            (_, addedValue) = cutTo10(list1, addedValue)
        }
        
        if addedValue > 0 {
            list1?.next = ListNode(addedValue)
        }
        
        return l1
    }
    
    func cutTo10(_ node: ListNode?, _ addedValue: Int) -> (ListNode?, Int) {
        node?.val += addedValue
        
        let newAddedValue = node!.val / 10
        node?.val = node!.val % 10
        
        return (node?.next, newAddedValue)
    }
}
