//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 29.03.2023.
//

import Foundation

class AlgorithmicTraining_01 {
    func problem_A(_ line1: String, _ line2: String) -> Int {
        let args = line1.split(separator: " ").map({Int($0)!})
        let temp = (room: args[0], cond: args[1])
        
        switch line2 {
        case "freeze": return min(temp.room, temp.cond)
        case "heat": return max(temp.room, temp.cond)
        case "auto": return temp.cond
        default: return temp.room
        }
    }
}

let line1 = readLine()!
let line2 = readLine()!

let solution = AlgorithmicTraining_01()
let result = solution.problem_A(line1, line2)

print(result)
