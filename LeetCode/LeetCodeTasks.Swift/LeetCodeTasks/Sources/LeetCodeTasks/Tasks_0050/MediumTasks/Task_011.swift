//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 19.03.2023.
//

/// 11. Container With Most Water:
///
/// You are given an integer array height of length n.
/// There are n vertical lines drawn such that the two endpoints of the i^(th) line are (i, 0) and (i, height[i]).
///
/// Find two lines that together with the x-axis form a container, such that the container contains the most water.
///
/// Return the maximum amount of water a container can store.
///
/// Notice that you may not slant the container.
///
/// Constraints:
/// 1) n == height.length
/// 2) 2 <= n <= 10^5
/// 3) 0 <= height[i] <= 10^4


import Foundation

extension MediumTasks {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var leftIdx = 0
        var rightIdx = height.count - 1
        
        while leftIdx < rightIdx {
            maxArea = max(maxArea, (min(height[leftIdx], height[rightIdx]) * (rightIdx - leftIdx)))
            
            if height[leftIdx] > height[rightIdx] {
                rightIdx -= 1
            } else {
                leftIdx += 1
            }
        }
        
        return maxArea
    }
}
