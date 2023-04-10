//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 08.04.2023.
//

import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
var a = Array<Int>(repeating: 0, count: nm[0])
var b = Array<Int>(repeating: 0, count: nm[1])

for i in 0..<a.count {
    a[i] = Int(readLine()!)!
}

for i in 0..<b.count {
    b[i] = Int(readLine()!)!
}

let solution = AlgorithmicTraining_01_03()
let result = solution.problem_C(a, b)

for i in 0..<result.count {
    print(result[i].count)
    print(result[i].map({ String($0)} ).joined(separator: " "))
}


class AlgorithmicTraining_01_03 {
    func problem_C(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var result: [[Int]] = Array(repeating: [], count: 3)

        let set1 = Set(nums1)
        let set2 = Set(nums2)

        result[0] = set1.intersection(set2).sorted()
        result[1] = set1.subtracting(result[0]).sorted()
        result[2] = set2.subtracting(result[0]).sorted()

        let a = result[0].map({ String($0)} ).joined(separator: " ")
        return result
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
