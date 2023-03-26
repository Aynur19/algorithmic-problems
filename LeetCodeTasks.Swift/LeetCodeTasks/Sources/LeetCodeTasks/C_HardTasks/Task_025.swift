//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 26.03.2023.
//

/// 25. Reverse Nodes in k-Group:
///
/// Given the head of a linked list, reverse the nodes of the list k at a time, and return the modified list.
///
/// k is a positive integer and is less than or equal to the length of the linked list.
/// If the number of nodes is not a multiple of k then left-out nodes, in the end, should remain as it is.
///
/// You may not alter the values in the list's nodes, only nodes themselves may be changed.
///
///
/// Constraints:
/// 1) The number of nodes in the list is n.
/// 2) 1 <= k <= n <= 5000
/// 3) 0 <= Node.val <= 1000
///
/// Follow-up: Can you solve the problem in O(1) extra memory space?


import Foundation

extension HardTasks {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil && head?.next != nil else { return head }
        
        var tmp = head
        var result = ListNode(tmp!.val)
        let end = result
        var idx = k - 1
        
        while tmp?.next != nil && idx > 0 {
            tmp = tmp?.next
            result = ListNode(tmp!.val, result)
            idx -= 1
        }
        
        if idx > 0 {
            return head
        }
        end.next = reverseKGroup(tmp?.next, k)
        
        return result
    }
}
