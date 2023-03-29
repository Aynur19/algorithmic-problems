//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 29.03.2023.
//

import Foundation

class AlgorithmicTraining_01 {
    func problem_C(_ lines: [String]) -> [String] {
        var phone: String = ""
        var result: [String] = []
        let droped: [String.Element] = ["-", "(", ")"]
        var tmp: String = ""
        
        for i in 0..<lines.count {
            tmp = lines[i]
            tmp.removeAll(where: {
                droped.contains(_: $0)
            })
            
            if tmp.hasPrefix("+7") {
                tmp = "8\(String(tmp.dropFirst(2)))"
            } else if tmp.count < 11 {
                tmp = "8495\(tmp)"
            }
            
            if i > 0 {
                phone == tmp ? result.append("YES") : result.append("NO")
            } else {
                phone = tmp
            }
        }
        
        return result
    }
    
    func problem_B(_ line1: String, _ line2: String, _ line3: String) -> String {
        let sides = [Int(line1)!, Int(line2)!, Int(line3)!].sorted()
        
        return sides[0] + sides[1] > sides[2] ? "YES" : "NO"
    }
    
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

//var lines: String[] = []
//
//for i in 0..<4 {
//    lines.append(readLine()!)
//}
//
//let solution = AlgorithmicTraining_01()
//let result = solution.problem_B(line1, line2, line3)
//
//for i in 0..<result.count {
//    print(result[i])
//}

