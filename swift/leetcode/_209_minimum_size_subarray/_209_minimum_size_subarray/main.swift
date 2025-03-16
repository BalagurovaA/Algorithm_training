
import Foundation

class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        
        for i in 0..<nums.count {
            if nums[i] == target {
                return 1
            }
        }
        
        var right = 0
        var left = 0
        var sum = 0
        var counter = 0
        var minCounter = 0
        
        for i in 0..<nums.count {

            sum += nums[i]
            
            counter += 1
            if sum >= target {
                sum -= nums[left]
                left += 1
                counter -= 1
            } else {
                
                right = i + 1
            }
            
        }
        
        return counter
    }
}

var s = Solution()
var a = [2,3,1,2,4,3]

print(s.minSubArrayLen(7, a))
