//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 25.03.2023.
//

/// 23. Merge k Sorted Lists
///
/// You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.
///
/// Merge all the linked-lists into one sorted linked-list and return it.
///
///
/// Constraints:
/// 1) k == lists.length
/// 2) 0 <= k <= 104
/// 3) 0 <= lists[i].length <= 500
/// 4) -10^4 <= lists[i][j] <= 10^4
/// 5) lists[i] is sorted in ascending order.
/// 5) The sum of lists[i].length will not exceed 10^4.


import Foundation

extension HardTasks {
    private func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
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
    
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard !lists.isEmpty else { return nil }
        
        if lists.count < 2 { return lists[0] }
        
        var result: ListNode?
        
        for i in 0..<lists.count {
            result = mergeTwoLists(result, lists[i])
        }
        
        return result
    }
}
