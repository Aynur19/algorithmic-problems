//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 27.03.2023.
//

import Foundation

class AlgorithmicTraining_02 {
    func problem_A(_ line1: String, _ line2: String) -> Int {
        let ln1 = line1.split(separator: " ")
        let ln2 = line2.split(separator: " ")
        
        let count = Int(ln1[0])!
        var min = Int.max
        var max = Int.min
        var tmp: Int
        
        for i in 0..<count {
            tmp = Int(ln2[i])!
            if min > tmp {
                min = tmp
            }
        
            if max < tmp {
                max = tmp
            }
        }
        
        return max - min
    }
}

//  SOLUTIONS:
//  PROBLEM A:
//
//  var line1 = readLine()!
//  var line2 = readLine()!
//
//  var solutions = AlgorithmicTraining_02()
//  var result = solutions.problem_A(line1, line2)
//
//  print(result)
