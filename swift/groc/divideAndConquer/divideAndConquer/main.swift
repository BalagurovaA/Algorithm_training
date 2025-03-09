//
//  main.swift
//  divideAndConquer
//
//  Created by Kristofer Sartorial on 3/9/25.
//

import Foundation

//Напишите рекурсивную функцию для нахождения наибольшего числа в списке
//это быстрая но не рекурсивная функция
func theBiggestNumb(_ arr: [Int]) -> Int {
    if arr.isEmpty {
        return 0
    } else {
        return arr.max()!
    }
    
}
//let a = [10, 20, 30, 40]
//print(theBiggestNumb(a))

//это не совсем быстрая, но рекурсивная
func theBiggestNumbRecursive(_ arr: [Int]) -> Int {
    if arr.isEmpty {
        return 0
    } else if arr.count == 1 {
        return arr[0]
    } else {
        var sub = theBiggestNumbRecursive(Array(arr.dropFirst()))
        return max(arr[0], sub)
    }
}

let numbers = [3, 7, 1, 10, 5]
let result = theBiggestNumbRecursive(numbers)
print(result)
