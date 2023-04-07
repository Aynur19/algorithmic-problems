//
//  File.swift
//  
//
//  Created by Aynur Nasybullin on 04.04.2023.
//

import Foundation

//let nums = readLine()!.split(separator: " ").map({ Int($0)! })
//
//let solution = AlgorithmicTraining_01_02()
//let result = solution.problem_H(nums)
//let resultStr = result.map({ String($0) }).joined(separator: " ")
//
//print(resultStr)

class AlgorithmicTraining_01_02 {
    func problem_H(_ nums: [Int]) -> [Int] {
        guard nums.count > 3 else { return nums }
        var maxMin: [Int] = []

        if nums.count > 5 {
            maxMin = nums[0..<6].sorted(by: >)
            
            for i in 6..<nums.count {
                if nums[i] >= maxMin[0] {
                    maxMin[3] = maxMin[2]
                    maxMin[2] = maxMin[1]
                    maxMin[1] = maxMin[0]
                    maxMin[0] = nums[i]
                } else if nums[i] >= maxMin[1] {
                    maxMin[3] = maxMin[2]
                    maxMin[2] = maxMin[1]
                    maxMin[1] = nums[i]
                } else if nums[i] >= maxMin[2] {
                    maxMin[3] = maxMin[2]
                    maxMin[2] = nums[i]
                } else if nums[i] > maxMin[3] {
                    maxMin[3] = nums[i]
                }
                
                if nums[i] <= maxMin[5] {
                    maxMin[4] = maxMin[5]
                    maxMin[5] = nums[i]
                } else if nums[i] < maxMin[4] {
                    maxMin[4] = nums[i]
                }
            }
        } else {
            maxMin = nums.sorted(by: >)
        }
        
        var max = maxMin[0] * maxMin[1] * maxMin[2]
        var result = [maxMin[0], maxMin[1], maxMin[2]]
        maxMin.append(maxMin[0])
        var tmp = 0
        
        for i in 1..<maxMin.count - 2 {
            tmp = maxMin[i] * maxMin[i + 1] * maxMin[i + 2]
            if max < tmp {
                max = tmp
                result = [maxMin[i], maxMin[i + 1], maxMin[i + 2]]
            }
        }
        
        return result
    }
    
    func problem_G(_ nums: [Int]) -> [Int] {
        var maxMax = max(nums[0], nums[1])
        var maxMin = min(nums[0], nums[1])
        
        var minMin = maxMin, minMax = maxMax
        
        for i in 2..<nums.count {
            if nums[i] >= maxMax {
                maxMin = maxMax
                maxMax = nums[i]
            } else if nums[i] > maxMin {
                maxMin = nums[i]
            }
            
            if nums[i] <= minMin {
                minMax = minMin
                minMin = nums[i]
            } else if nums[i] < minMax {
                minMax = nums[i]
            }
        }

        if minMin * minMax > maxMax * maxMin {
            return [minMin, minMax]
        } else {
            return [maxMin, maxMax]
        }
    }
    
    func problem_F(_ n: Int, _ nums: [Int]) -> [Int] {
        var l = 0, r = nums.count - 1
        var idx = 0
        
        while l < r {
            if nums[l] != nums[r] {
                idx = l
                
                if r != nums.count - 1 {
                    l -= 1
                    r = nums.count - 1
                }
            } else {
                r -= 1
            }
            l += 1
        }
        
        if idx == 0 { return [] }
        else { return nums[0...idx].reversed() }
    }
    
    func problem_E(_ n: Int, _ line: String) -> Int {
        var distances = line.split(separator: " ").map({ Int($0)! })
        var winner = distances[0]
        var result = 0
        var tmp = 0
        
        for i in 1..<distances.count - 1 {
            tmp = distances[i]
            if tmp > winner {
                winner = tmp
                result = 0
            }
            else if tmp % 10 == 5 && tmp > result && tmp > distances[i + 1] {
                result = tmp
            }
        }
        
        if winner < distances[n - 1] || result == 0 { return 0 }
        else {
            distances.sort(by: >)
            for i in 0..<distances.count - 1
            where distances[i] == result { return i + 1 }
        }
        
        return 0
    }
    
    func problem_D(_ line: String) -> Int {
        let nums = line.split(separator: " ").map({ Int($0)! })
        guard nums.count > 2 else { return 0 }
        
        var count = 0
        var i = 1
        while i < nums.count - 1 {
            if nums[i] > nums[i - 1] && nums[i] > nums[i + 1] {
                count += 1
                i += 2
            } else {
                i += 1
            }
        }
        
        return count
    }
    
    func problem_C(_ n: Int, _ numbers: String, _ target: Int) -> Int {
        let nums = numbers.split(separator: " ").map({ Int($0)! })
        var dif = Int.max, idx = 0
        
        for i in 0..<nums.count where dif > abs(target - nums[i]) && dif > 0 {
            dif = abs(target - nums[i])
            idx = i
        }
    
        return nums[idx]
    }
    
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
