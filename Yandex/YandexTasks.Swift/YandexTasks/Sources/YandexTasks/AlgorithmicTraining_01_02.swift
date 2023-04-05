//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 04.04.2023.
//

import Foundation

class AlgorithmicTraining_01_02 {
    func problem_B(_ list: [Int]) -> String {
        let end = -2_000_000_000
        var result = Set<String>()
        var tmp = list[0]
        
        guard tmp != end else { return "RANDOM" }
        
        for i in 1..<list.count - 1 {
            if tmp == list[i] {
                result.insert("CONSTANT")
            } else if tmp > list[i] {
                result.insert("DESCENDING")
            } else {
                result.insert("ASCENDING")
            }
            
            tmp = list[i]
        }
        
        if result.isEmpty { return "CONSTANT" }
        else if result.count == 1 { return result.first! }
        else if result.count == 2 {
            if !result.contains("DESCENDING") { return "WEAKLY ASCENDING" }
            else if !result.contains("ASCENDING") { return "WEAKLY DESCENDING" }
            else { return "RANDOM" }
        }
        else { return "RANDOM" }
    }
    
    func problem_A(_ list: [Int]) -> String {
        for i in 0..<list.count - 1 where list[i] >= list[i + 1] {
            return "NO"
        }
        
        return "YES"
    }
}

