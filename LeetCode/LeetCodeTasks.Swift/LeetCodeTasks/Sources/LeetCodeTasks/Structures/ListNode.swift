//
//  ListNode.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 15.03.2023.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0;
        self.next = nil;
    }
    
    public init(_ val: Int) {
        self.val = val;
        self.next = nil;
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
    
    
}

extension ListNode {
    public static func equalListNodes(l1: ListNode?, l2: ListNode?) -> Bool {
        guard l1 != nil, l2 != nil else {
            if l1 == nil && l2 == nil { return true }
            else { return false }
        }
        
        var list1 = l1
        var list2 = l2
        
        while list1 != nil && list2 != nil {
            if list1!.val != list2!.val { return false }
            list1 = list1?.next
            list2 = list2?.next
        }
        
        if list1?.next != nil || list2?.next != nil { return false }
        
        return true
    }
}
