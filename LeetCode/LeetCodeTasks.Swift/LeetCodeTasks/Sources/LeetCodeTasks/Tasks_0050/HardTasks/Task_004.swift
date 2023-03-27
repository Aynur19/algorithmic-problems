//
//  Task_004.swift
//  LeetCodeTasks.Swift
//
//  Created by Aynur Nasybullin on 16.03.2023.
//

/// 4. Median of Two Sorted Arrays
///
/// Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
///
/// The overall run time complexity should be O(log (m+n)).
///
/// Constraints:
/// 1) nums1.length == m
/// 2) nums2.length == n
/// 3) 0 <= m <= 1000
/// 4) 0 <= n <= 1000
/// 5) 1 <= m + n <= 2000
/// 6) -106 <= nums1[i], nums2[i] <= 106

import Foundation

extension HardTasks {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        if nums1.isEmpty { return getMedian(nums2) }
        else if nums2.isEmpty { return getMedian(nums1) }
        
        let count = nums1.count + nums2.count
        let size = Int(count + 1) / 2
        
        var dict: [Int:Int] = [:]
        var j = 0, i = 0, k = 0
        
        while j <= size {
            if i < nums1.count && k < nums2.count {
                if nums1[i] <= nums2[k] {
                    dict[j] = nums1[i]
                    i += 1
                } else {
                    dict[j] = nums2[k]
                    k += 1
                }
            } else if i < nums1.count {
                dict[j] = nums1[i]
                i += 1
            } else if k < nums2.count {
                dict[j] = nums2[k]
                k += 1
            }
            j = i + k
        }
        
        if count % 2 != 0 { return Double(dict[j - 2]!) }
        else { return Double(dict[j - 2]! + dict[j - 1]!) / 2 }
    }
    
    func getMedian(_ nums: [Int]) -> Double {
        if nums.isEmpty { return 0 }
        else if nums.count < 2 { return Double(nums[0]) }
        else {
            let i = (nums.count + 1) / 2
            return nums.count % 2 == 0 ? Double(nums[i] + nums[i - 1]) / 2 :  Double(nums[i - 1])
        }
    }
}
