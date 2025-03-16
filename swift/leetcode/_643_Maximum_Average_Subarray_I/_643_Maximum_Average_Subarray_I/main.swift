//
//  main.swift
//  _643_Maximum_Average_Subarray_I
//
//  Created by Kristofer Sartorial on 3/16/25.
//

import Foundation

//брутфорс
//class Solution {
//    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
//        var maxAverage: Double = Double(nums.min()!)
//
//        for i in 0..<nums.count - k + 1 {
//            var sum: Double = 0
//            var currentAver: Double = 0
//            for j in i..<i + k {
//                sum += Double(nums[j])
//            }
//            currentAver += Double(sum / Double(k))
//            maxAverage = max(maxAverage, currentAver)
//        }
//       
//
//        
//        return Double(maxAverage)
//    }
//}

class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum: Double = 0
        for i in 0..<k {
            sum += Double(nums[i])
        }
        var total = sum
        for i in k..<nums.count {
            
             sum -= Double(nums[i - k])
            sum += Double(nums[i])
            total = max(sum, total)
        }
       return total / Double(k)
        
    
    }
}


var a = [1,12,-5,-6,50,3]
var sol = Solution()
//sol.findMaxAverage(a, 1)
print(sol.findMaxAverage(a, 4))
