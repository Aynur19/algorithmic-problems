//
//  main.swift
//  ConsoleApp
//
//  Created by Aynur Nasybullin on 18.03.2023.
//

import Foundation

let word = "jknd*.*.dfjldmvf*"
let specials: [Character] = [".", "*"]
let idx = word.firstIndex(where: { char in
    return specials.contains(char)
})
//print(word[word.startIndex...idx!])

print(idx!)
print(word[word.startIndex..<idx!])


//print(word[word.startIndex...idx!.upperBound])/

