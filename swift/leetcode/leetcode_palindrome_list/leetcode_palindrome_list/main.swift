//
//  main.swift
//  leetcode_palindrome_list
//
//  Created by Kristofer Sartorial on 3/4/25.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
}
class Solution {
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        var current = head
        var array: [Int] = []
        while current != nil {
            array.append(current!.val)
            current = current?.next
        }
        //            индексы!
        var left = 0
        var right = array.count - 1
        while (left < right) {
            if array[left] != array[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}



//
//class Solution {
//    func isPalindrome(_ head: ListNode?) -> Bool {
//        var current = head
//        var array: [Int] = []
//        
//        // Обходим список и сохраняем значения в массив
//        while current != nil {
//            array.append(current!.val)
//            current = current?.next
//        }
//        
//        // Проверяем, является ли массив палиндромом
//        var left = 0
//        var right = array.count - 1
//        while left < right {
//            if array[left] != array[right] {
//                return false
//            }
//            left += 1
//            right -= 1
//        }
//        
//        return true
//    }
//}
