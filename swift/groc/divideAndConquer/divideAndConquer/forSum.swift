//
//  forSum.swift
//  divideAndConquer
//
//  Created by Kristofer Sartorial on 3/9/25.
//
import Foundation

//напишите код для функции sum
//данный принцип называется разделяй и властвуй основная цель: через рекурсию дойти до минимального и самого простого случая и отталкиваться в решении задачи от него
func sum(_ arr: [Int]) -> Int {
    
    if arr.isEmpty {
        return 0
    } else {
        let slice = arr[1...]
        return arr[0] + slice.reduce(0, +)
    }
                                                                                                                                                        

    
}

let array = [10, 20, 30, 40]
//
//print(sum(array))

