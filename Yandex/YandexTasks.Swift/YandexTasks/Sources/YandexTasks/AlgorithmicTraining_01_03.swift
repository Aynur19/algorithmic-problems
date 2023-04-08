//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 08.04.2023.
//

import Foundation

//let solution = AlgorithmicTraining_01_03()
//
//let nums1 = readLine()!
//let nums2 = readLine()!
//let result = solution.problem_B(nums1, nums2)
//
//print(result.map({ String($0) }).joined(separator: " "))

class AlgorithmicTraining_01_03 {
    func problem_J() {
    }
    
    func problem_I() {
    }
    
    func problem_H() {
    }
    
    func problem_G() {
    }
    
    func problem_F() {
    }
    
    func problem_E() {
    }
    
    func problem_D() {
    }
    
    func problem_C() {
    }
    
    func problem_B(_ nums1: String, _ nums2: String) -> [Int] {
        let set1 = Set(nums1.split(separator: " ").map({ Int($0)! }))
        let set2 = Set(nums2.split(separator: " ").map({ Int($0)! }))
        
        return set1.intersection(set2).sorted()
    }
    
    func problem_A(_ nums: String) -> Int {
        return Set(nums.split(separator: " ").map({ Int($0)! })).count
    }
}

