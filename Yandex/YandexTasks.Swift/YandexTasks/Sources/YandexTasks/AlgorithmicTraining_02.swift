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
    
    func problem_B(_ line1: String, _ line2: String) -> String {
        var msg = ""
        while msg.count < line2.count {
            msg = "\(msg)\(line1)"
        }

        var pref = Array(msg)
        while !pref.isEmpty {
            if line2.hasPrefix(String(pref)) { break }
            
            pref.removeFirst()
        }

        let prefStr = String(pref)
        var needAdd: String = ""
        
        if !prefStr.isEmpty {
            needAdd = String(line2[prefStr.endIndex...])
        } else {
            needAdd = line2
        }
        
        return needAdd
    }
}

//  EXAMPLE:
//
//  var line1 = readLine()!
//  var line2 = readLine()!
//
//  var solutions = AlgorithmicTraining_02()
//  var result = solutions.problem_A(line1, line2)
//
//  print(result)


