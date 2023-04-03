//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 29.03.2023.
//

import Foundation

class AlgorithmicTraining_01 {
    func problem_J(_ a: Double, _ b: Double, _ c: Double, _ d: Double, _ e: Double, _ f: Double) -> String {
        
        let determinant = a * d - b * c
        var koef = 0.0
        var a = a, b = b, c = c, d = d, e = e, f = f
        
        if determinant == 0 {
            if a == 0, c == 0 {
                if b == 0, d == 0 {
                    if e == 0, f == 0 { return "5" }
                    
                    return "0"
                }
                if e * d != f * b { return "0" }
                else {
                    if b != 0 { return "4 \(String(format: "%.5f", e / b))" }
                    else { return "4 \(String(format: "%.5f", f / d))" }
                }
            }
            
            if b == 0, d == 0 {
                if e * c != f * a { return "0" }
                else {
                    if a != 0 { return "3 \(String(format: "%.5f", e / a))" }
                    else { return "3 \(String(format: "%.5f", f / c))" }
                }
            }
            
            if a != 0 {
                koef = c / a
                c = 0
                d -= koef * b
                f -= koef * e
                
                if d == 0, f == 0 {
                    return "1 \(String(format: "%.5f", -a / b)) \(String(format: "%.5f", e / b))"
                }
            } else {
                koef = a / c
                a = 0
                b -= koef * d
                e -= koef * f
                
                if b == 0, e == 0 {
                    return "1 \(String(format: "%.5f", -c / d)) \(String(format: "%.5f", f / d))"
                }
            }
            return "0"
            
        } else {
            if d != 0 {
                let x = (e - b * f / d) / (a - b * c / d)
                let y = (f - c * x) / d
                return "2 \(String(format: "%.5f", x)) \(String(format: "%.5f", y))"
            } else {
                let x = (f - d * e / b) / (c - d * a / b)
                let y = (e - a * x) / b
                return "2 \(String(format: "%.5f", x)) \(String(format: "%.5f", y))"
            }
        }
    }
    
    func problem_I(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int) -> String {
        let holeSizes = [d, e].sorted()
        let brickSizes = [a, b, c].sorted()
        
        if brickSizes[0] <= holeSizes[0] && brickSizes[1] <= holeSizes[1] {
            return "YES"
        }

        return "NO"
    }
    
    func problem_H(_ a: Int, _ b: Int, _ n: Int, _ m: Int) -> [Int] {
        let platform1 = (min: (1 + a) * n - a, max: (1 + a) * n + a)
        let platform2 = (min: (1 + b) * m - b, max: (1 + b) * m + b)
        
        if platform1.max < platform2.min || platform1.min > platform2.max { return [-1] }
        let minX = max(platform1.min, platform2.min)
        let maxX = min(platform1.max, platform2.max)
        
        return [minX, maxX].sorted()
    }
    
    func problem_G(_ line: String) -> Int {
        let args = line.split(separator: " ").map({ Int($0)! })
        guard args[0] >= args[1], args[1] >= args[2] else { return 0 }

        var metal = args[0]
        var count = 0
        var production = (residue: 0, count: 0)
        let tuck = (residue: args[1] % args[2], count: args[1] / args[2])
        
        while metal >= args[1] {
            production.residue = metal % args[1]
            production.count = metal / args[1]
            metal = tuck.residue * production.count + production.residue
            count += production.count * tuck.count
        }
        
        return count
    }
    
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

let a = Double(readLine()!)!
let b = Double(readLine()!)!
let c = Double(readLine()!)!
let d = Double(readLine()!)!
let e = Double(readLine()!)!
let f = Double(readLine()!)!

let solution = AlgorithmicTraining_01()
let result = solution.problem_J(a, b, c, d, e, f)

print("\(result)")

