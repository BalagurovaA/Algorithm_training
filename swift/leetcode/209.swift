// 209
import Foundation

class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var left = 0
        var sum = 0
        var counter = Int.max
        
        
        for right in 0..<nums.count {
            sum += nums[right]
            while sum >= target {
                counter = min(counter, right - left + 1)
                sum -= nums[left]
                left += 1
            }
   
        }
        
        
        
        return counter == Int.max ? 0 : counter
    }
    
}


var s = Solution()
var a = [2,3,1,2,4,3]

print(s.minSubArrayLen(7, a))
