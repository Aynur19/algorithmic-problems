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
    
    func problem_D(_ line1: String, _ line2: String) -> Int {
        let count = Int(line1)!
        let lengthsStr = line2.split(separator: " ")
        var lengths: [Int] = []
        
        for i in 0..<count {
            lengths.append(Int(lengthsStr[i])!)
        }
        
        let max = lengths.max()!
        let sum = lengths.reduce(0, +)
        
        for i in 1...sum where (sum + i) % 2 == 0 {
            if sum - max + i == max {
                return i
            }
        }
        
        return sum
    }
    
    func problem_E(_ line1: String, _ line2: String) -> Int {
        let args1 = line1.split(separator: " ").map({ Int($0)! })
        let args2 = line2.split(separator: " ").map({ Int($0)! })

        var mower = (l: args1[0], b: args1[1], r: args1[2], t: args1[3])
        let sprinkler = (x: args2[0], y: args2[1], r: args2[2])

        mower.l = min(mower.l, mower.r)
        mower.r = max(mower.l, mower.r)
        mower.b = min(mower.b, mower.t)
        mower.t = max(mower.b, mower.t)

        let startY = max(mower.b, sprinkler.y - sprinkler.r)
        let endY = min(mower.t, sprinkler.y + sprinkler.r)
        let r2 = Double(sprinkler.r * sprinkler.r)

        var area = 0
        var deltaX: Double
        var minX = 0, maxX = 0
        var leftX = 0, rightX = 0


        for y in startY...endY {
            deltaX = sqrt(r2 - Double((y - sprinkler.y) * (y - sprinkler.y)))
            rightX = Int(floor(Double(sprinkler.x) + deltaX))
            leftX = Int(ceil(Double(sprinkler.x) - deltaX))

            maxX = min(mower.r, rightX)
            minX = max(mower.l, leftX)

            if maxX >= minX {
                area += maxX - minX + 1
            }
        }

        return area
    }
}

//var line1 = readLine()!
//var line2 = readLine()!
//
//var solutions = AlgorithmicTraining_02A()
//var result = solutions.problem_E(line1, line2)
//
//print(result)


