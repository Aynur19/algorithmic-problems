//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 26.03.2023.
//

/// 24. Swap Nodes in Pairs:
///
/// Given a linked list, swap every two adjacent nodes and return its head.
/// You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed.)
///
///
/// Constraints:
/// 1) The number of nodes in the list is in the range [0, 100].
/// 2) 0 <= Node.val <= 100


import Foundation

extension MediumTasks {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard head != nil && head?.next != nil else { return head }
        
        var result: ListNode?
        let end = swapPairs(head?.next?.next)

        result = head?.next
        result?.next = head
        result?.next?.next = end
        
        return result
    }
}
