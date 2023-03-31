//
//  main.swift
//  ConsoleApp
//
//  Created by Aynur Nasybullin on 18.03.2023.
//

import Foundation

func task1(_ lines: [String]) -> Double {
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

var line1 = Int(readLine()!)!
var i = 0
var line = ""
var lines: [String] = []

while i < line1 * 2 {
    line = readLine()!
    if line == "APPLICATION_FINISHED_LAUNCHING" || line == "APPLICATION_TERMINATED" {
        lines.append(line)
        lines.append(readLine()!)
    } else {
        readLine()
    }
    i += 2
}


print(task1(lines))



