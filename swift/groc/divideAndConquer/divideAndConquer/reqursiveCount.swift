//
//  main.swift
//  divideAndConquer
//
//  Created by Kristofer Sartorial on 3/9/25.
//

import Foundation

//напишите рекурсивную функцию для посчета элементов в списке

func recursiveCount<T>(_ arrSlice: ArraySlice<T>) -> Int {
    if arrSlice.isEmpty {
        return 0
    }
    else {
        return 1 + recursiveCount(arrSlice.dropFirst())
    }
}

//drop first возвращает срез на один элемент меньше каждый раз

let arr = [10, 20, 30, 40]
//print(recursiveCount(arr[0...]))


