//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 04.04.2023.
//

import Foundation

class AlgorithmicTraining_01_02 {
    func problem_A(_ list: [Int]) -> String {
        for i in 0..<list.count - 1 where list[i] >= list[i + 1] {
            return "NO"
        }
        
        return "YES"
    }
}

let solution = AlgorithmicTraining_01_02()
let list = readLine()!.split(separator: " ").map({ Int($0)! })
let result = solution.problem_A(list)

print(result)
