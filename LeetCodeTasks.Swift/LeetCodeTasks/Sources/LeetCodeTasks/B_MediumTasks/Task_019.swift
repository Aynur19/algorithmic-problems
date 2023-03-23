//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 23.03.2023.
//

/// 19. Remove Nth Node From End of List:
///
/// Given the head of a linked list, remove the nth node from the end of the list and return its head.
///
///
/// Constraints:
/// 1) The number of nodes in the list is sz.
/// 2) 1 <= sz <= 30
/// 3) 0 <= Node.val <= 100
/// 4) 1 <= n <= sz


import Foundation

extension MediumTasks {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let list = head, var ln = list.next else { return nil }
        
        var count = 1
        while ln.next != nil {
            ln = ln.next!
            count += 1
        }
        
        if count + 1 < n { return nil }
        if count + 1 == n { return ln }
        
        ln = list
        while count > n {
            ln = ln.next!
            count -= 1
        }
        
        
        if ln.next?.next != nil {
            ln.next = ln.next?.next!
        } else {
            ln.next = nil
        }
        
        return list
    }
}
