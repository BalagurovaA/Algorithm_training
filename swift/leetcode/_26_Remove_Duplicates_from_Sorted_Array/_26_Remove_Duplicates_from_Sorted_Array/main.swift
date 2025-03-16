//
//  main.swift
//  _26_Remove_Duplicates_from_Sorted_Array
//
//  Created by Kristofer Sartorial on 3/15/25.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var total  = 0
        
        var i = 0
        
        for j in 1..<nums.count {
            if nums[i] != nums[j] {
                i += 1
                nums[i] = nums[j]
                total += 1
            }
    
        }
        return total + 1
    }
}

var s = Solution()
var nums = [1,1,2]
var r = s.removeDuplicates(&nums)
print(r)
print(nums)
