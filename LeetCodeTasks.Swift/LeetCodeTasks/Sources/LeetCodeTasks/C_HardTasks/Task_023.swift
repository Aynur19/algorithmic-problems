//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 25.03.2023.
//

/// 23. Merge k Sorted Lists:
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

//      1               4   5
//  1           3   4
//          2                   6


import Foundation

extension HardTasks {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard !lists.isEmpty else { return nil }
        
        var nodesL: [ListNode?] = []
        lists.forEach { ln in
            if ln != nil {
                nodesL.append(ln)
            }
        }
        guard !nodesL.isEmpty else { return nil }

        let result = ListNode()
        var dict: [Int:[ListNode]] = [:]
        var tmp: ListNode?
        for i in 0..<nodesL.count {
            tmp = nodesL[i]
            
            while tmp != nil {
                if dict[tmp!.val] == nil {
                    dict[tmp!.val] = [tmp!]
                } else {
                    dict[tmp!.val]!.append(tmp!)
                }
                tmp = tmp?.next
            }
        }
        
        let keys = Array(dict.keys.sorted())
        tmp = result
        keys.forEach { k in
            dict[k]?.forEach { ln in
                tmp?.next = ln
                tmp = tmp?.next
            }
        }
        
        
        return result.next
    }
}
