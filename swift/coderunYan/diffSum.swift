//
//  diffSum.swift
//  
//
//  Created by Kristofer Sartorial on 3/24/25.
//

import Foundation

func numb() -> Int{
    let count = Int(readLine()!)
    let n = readLine()!.split(separator: " ").map{Int($0)}
    var nums: Set<Int> = []
    
    for i in 0..<count! {
        nums.insert(n[i]!)
    }
    return nums.reduce(0, +)

}

print(numb())
