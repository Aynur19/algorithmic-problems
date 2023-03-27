//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 26.03.2023.
//

/// 26. Remove Duplicates from Sorted Array:
///
/// Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once.
/// The relative order of the elements should be kept the same.
///
/// Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums.
/// More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result.
/// It does not matter what you leave beyond the first k elements.
///
/// Return k after placing the final result in the first k slots of nums.
///
/// Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
///
/// Custom Judge:
/// The judge will test your solution with the following code:
///
//  int[] nums = [...]; // Input array
//  int[] expectedNums = [...]; // The expected answer with correct length
//
//  int k = removeDuplicates(nums); // Calls your implementation
//
//  assert k == expectedNums.length;
//  for (int i = 0; i < k; i++) {
//      assert nums[i] == expectedNums[i];
//  }
///
/// If all assertions pass, then your solution will be accepted.
///
///
/// Constraints:
/// 1) 1 <= nums.length <= 3 * 10^4
/// 2) -100 <= nums[i] <= 100
/// 3) nums is sorted in non-decreasing order.


import Foundation

extension EasyTasks {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return 1 }

        var tmpIdx = 0
        for i in 1..<nums.count where nums[tmpIdx] != nums[i] {
            nums[tmpIdx + 1] = nums[i]
            tmpIdx += 1
        }
        
        return tmpIdx + 1
    }
}
