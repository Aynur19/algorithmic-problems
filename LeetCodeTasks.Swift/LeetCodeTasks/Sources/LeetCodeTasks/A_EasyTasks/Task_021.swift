//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 24.03.2023.
//

/// 21. Merge Two Sorted Lists:
///
/// You are given the heads of two sorted linked lists list1 and list2.
///
/// Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
///
/// Return the head of the merged linked list.
///
///
/// Constraints:
/// 1) The number of nodes in both lists is in the range [0, 50].
/// 2) -100 <= Node.val <= 100
/// 3) Both list1 and list2 are sorted in non-decreasing order.


import Foundation

extension EasyTasks {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard list1 != nil, list2 != nil else {
            if list1 == nil && list2 == nil { return nil }
            else if list1 == nil { return list2 }
            else { return list1 }
        }
        
        var l1 = list1, l2 = list2
        var result: ListNode? = ListNode()
        var tmp: ListNode? = result
                              
        while l1 != nil && l2 != nil {
            if l1!.val >= l2!.val {
                tmp?.next = l2
                tmp = tmp?.next
                l2 = l2?.next
            } else {
                tmp?.next = l1
                tmp = tmp?.next
                l1 = l1?.next
            }
        }
        
        if l1 == nil {
            tmp?.next = l2
        } else {
            tmp?.next = l1
        }
        
        return result?.next
    }
}
