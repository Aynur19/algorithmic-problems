//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 29.03.2023.
//

import Foundation

class AlgorithmicTraining_01 {
    func problem_F(_ line: String) -> [Int] {
        let sizes = line.split(separator: " ").map({ Int($0)! })
        let l1 = (min: min(sizes[0], sizes[1]), max: max(sizes[0], sizes[1]))
        let l2 = (min: min(sizes[2], sizes[3]), max: max(sizes[2], sizes[3]))

        var result = (a: Int.max, b: Int.max, area: Int.max)
        result.a = max(l1.max, l2.max)
        result.b = l1.max + l2.max - result.a
        
        if result.b <= max(l1.min, l2.min) {
            result.a += min(min(l1.min, l2.min), result.b)
            result.b = max(l1.min, l2.min)
        } else {
            result.b = l1.min + l2.min
        }
        
        return [result.a, result.b]
    }
    
    func problem_E(_ line1: String) -> [Int] {
        let args = line1.split(separator: " ")
        let h = (k1: Int(args[0])!,
                 m: Int(args[1])!,
                 k2: Int(args[2])!, p2: Int(args[3])!, n2: Int(args[4])!)
        
        guard h.k1 > 0 && h.m > 0 && h.k2 > 0 && h.p2 > 0 && h.n2 > 0 else { return [-1, -1] }
        guard h.n2 <= h.m && h.n2 <= h.k2 && h.p2 <= h.k2 else { return [-1, -1] }
        if h.k2 == 1 && (h.n2 != 1 || h.p2 != 1)  { return [-1, -1] }
        
        var result = (p1: -1, n1: -1)
        
        let n2 = (h.p2 - 1) * h.m + h.n2
        if n2 > h.k2 { return [-1, -1] }
                
        let apartmetsPerFloor = h.k2 / n2 + (h.k2 % n2 == 0 ? 0 : 1)
        if apartmetsPerFloor * (n2 - 1) > h.k2 { return [-1, -1] }
        
        if n2 == 1 {
            if h.k1 <= h.k2 { return [1, 1] }
            else if h.k1 <= h.m * h.k2 {
                return h.m == 1 ? [1, 1] : [1, 0]
            }
            else {
                return h.m == 1 ? [0, 1] : [0, 0]
                
            }
        }
        
        let apartmetsPerFloor2 = (h.k2 - 1) / (n2 - 1)
        let bounds = (l: min(apartmetsPerFloor, apartmetsPerFloor2),
                      r: max(apartmetsPerFloor, apartmetsPerFloor2))
        
        for apf in bounds.l...bounds.r {
            var n1 = h.k1 / apf + (h.k1 % apf == 0 ? 0 : 1)
            let p1 = n1 / h.m + (n1 % h.m == 0 ? 0 : 1)
            n1 = n1 - (p1 - 1) * h.m
            
            if result.n1 == -1 {
                result.n1 = n1
            } else if result.n1 != n1 {
                result.n1 = 0
            }
            
            if result.p1 == -1 {
                result.p1 = p1
            } else if result.p1 != p1 {
                result.p1 = 0
            }
            
            if result.n1 == 0 && result.p1 == 0 { break }
        }
                
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

//var line = readLine()!
//
//let solution = AlgorithmicTraining_01()
//let result = solution.problem_F(line)
//
//print("\(result[0]) \(result[1])")

