//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 27.03.2023.
//

import Foundation

class AlgorithmicTraining_02A {
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
    
    func problem_C(_ n: Int, _ coords: [String]) -> Int {
        var p = n * 4
        
        var dict: [Int:String] = [:]
        var x = 0, y = 0
        
        coords.forEach { xy in
            let xyStr = xy.split(separator: " ")
            x = Int(xyStr[0])!
            y = Int(xyStr[1])!
            
            dict[x * 10 + y] = xy
        }
        
        dict.forEach { (k, v) in
            if dict[k - 10] != nil {
                p -= 2
            }
            
            if dict[k - 1] != nil {
                p -= 2
            }
        }
        
        return p
    }
}

//  EXAMPLE:
//

//var line1 = readLine()!
//let count = Int(line1)!
//
//var line2: [String] = []
//
//for i in 0..<count {
//    let coords = readLine()!
//    line2.append(coords)
//}
//
//var solutions = AlgorithmicTraining_02A()
//var result = solutions.problem_B(count, line2)
//
//print(result)


