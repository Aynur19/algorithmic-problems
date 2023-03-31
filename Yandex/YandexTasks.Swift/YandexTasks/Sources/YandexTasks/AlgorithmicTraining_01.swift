//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 29.03.2023.
//

import Foundation

class AlgorithmicTraining_01 {
    func task1(_ n: Int, _ lines: [String]) -> Double {
        var sessions: [String:String] = [:]
        var successCount = 0
        var errorCount = 0
        var i = 0
        
        while i < lines.count - 1 {
            if sessions[lines[i + 1]] == nil {
                if lines[i] == "APPLICATION_FINISHED_LAUNCHING" {
                    sessions[lines[i + 1]] = lines[i]
                }
            } else {
                if lines[i] == "APPLICATION_FINISHED_LAUNCHING" {
                    errorCount += 1
                } else if lines[i] == "APPLICATION_TERMINATED" {
                    successCount += 1
                }
                
                sessions.removeValue(forKey: lines[i + 1])
            }
            
            i += 2
        }
        
        errorCount += sessions.count
        
        if errorCount == 0 { return 0 }
        
        return Double(errorCount) / Double(successCount + errorCount) * 100
    }
    
    func problem_E(_ line1: String) -> [Int] {
        let args = line1.split(separator: " ")
        let h = (k1: Int(args[0])!, m: Int(args[1])!, k2: Int(args[2])!, p2: Int(args[3])!, n2: Int(args[4])!)
        
        guard h.k1 > 0 && h.m > 0 && h.k2 > 0 && h.p2 > 0 && h.n2 > 0 else { return [-1, -1] }
        
        if h.k2 == 1 && (h.n2 != 1 || h.p2 != 1)  { return [-1, -1] }
        if h.n2 > h.m { return [-1, -1] }
        if h.n2 > h.k2 { return [-1, -1] }
        if h.p2 > h.k2 { return [-1, -1] }
//        if h.k2 == 1 {
//            if h.m == 1 {
//                return h.k1 <= h.m ? [1, 1] : [0, 1]
//            } else {
//                return h.k1 <= h.m ? [1, 0] : [0, 0]
//            }
//        }
        
        var result = (p1: 0, n1: 0)
        let n2 = (h.p2 - 1) * h.m + h.n2
        if n2 > h.k2 { return [-1, -1] }
        
        let apartmetsPerFloor = h.k2 / n2 + (h.k2 % n2 == 0 ? 0 : 1)
        if apartmetsPerFloor * (h.n2 - 1) > h.k2 { return [-1, -1] }
        
//        result.n1 = apartmetsPerFloor * (h.n2 - 1)
        result.n1 = h.k1 / apartmetsPerFloor + (h.k1 % apartmetsPerFloor == 0 ? 0 : 1)
        result.p1 = result.n1 / h.m
        result.n1 = result.n1 - (result.p1 - 1) * h.m
//
//        if n2 == 1 {
//            if h.k2 >= h.k1 { return [1, 1] }
//            else {
//                return h.m == 1 ? [0, 1] : [0, 0]
//            }
//        }
        // кв 7, эт 2
        
        
//        result.n1 = Int(ceil(Double(h.k1) / Double(apartmetsPerFloor)))
        
        result.p1 = Int(ceil(Double(result.n1) / Double(h.m)))
        result.n1 = result.n1 - (result.p1 - 1) * h.m
        
        if result.p1 <= 0 || result.n1 <= 0 { return [-1, -1] }
    
        return [result.p1, result.n1]
    }
    
    func problem_D(_ lines: [String]) -> [String] {
        let args = (a: Int(lines[0])!, b: Int(lines[1])!, c: Int(lines[2])!)
        guard args.c >= 0 else { return ["NO SOLUTION"] }
        
        if args.a == 0 {
            if args.b < 0 || args.b != args.c * args.c { return ["NO SOLUTION"] }
            else { return ["MANY SOLUTIONS"] }
        }
        
        let x = (args.c * args.c - args.b) / args.a
        var check = args.a * x + args.b == args.c * args.c
        
        if check {
            if args.a * (-x) + args.b >= 0 {
                check = Int(sqrt(Double(args.a * (-x) + args.b))) == args.c
                
                if check && x != -x {
                    return x < -x ? ["\(x)", "\(-x)"] : ["\(-x)", "\(x)"]
                }
            }
        } else { return ["NO SOLUTION"] }
        
        return ["\(x)"]
    }
    
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

//var line1 = readLine()!
//
//let solution = AlgorithmicTraining_01()
//let result = solution.problem_E(line1)
//
//for i in 0..<result.count {
//    print(result[i])
//}

func task1(_ n: Int, _ lines: [String]) -> Double {
    var sessions: [String:String] = [:]
    var successCount = 0
    var errorCount = 0
    var i = 0
    
    while i < lines.count - 1 {
        if sessions[lines[i + 1]] == nil {
            if lines[i] == "APPLICATION_FINISHED_LAUNCHING" {
                sessions[lines[i + 1]] = lines[i]
            }
        } else {
            if lines[i] == "APPLICATION_FINISHED_LAUNCHING" {
                errorCount += 1
            } else if lines[i] == "APPLICATION_TERMINATED" {
                successCount += 1
            }
            
            sessions.removeValue(forKey: lines[i + 1])
        }
        
        i += 2
    }
    
    errorCount += sessions.count
    
    if errorCount == 0 { return 0 }
    
    return Double(errorCount) / Double(successCount + errorCount) * 100
}

//var n = Int(readLine()!)!
//var lines: [String] = []
//var i = 0
//var line = ""
//
//while i < n {
//    line = readLine()
//}
//for i in 0..<n*2 {
//    
//    lines.append(readLine()!)
//}
//
//task1(n, lines)
