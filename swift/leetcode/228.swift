

// 228

import Foundation

class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        
        var left = nums[0]
        var right = nums[0]
        var final: [String] = []
        
        for i in 1..<nums.count {
            if nums[i] == right + 1 {
                right = nums[i]
            } else {
                if left == right {
                    final.append("\(left)")
                } else {
                    final.append("\(left)->\(right)")
                    
                }
                left = nums[i]
                right = nums[i]
            }
            
        }
        
        if left == right {
            final.append("\(left)")
        } else {
            final.append("\(left)->\(right)")
        }
        
        return final
    }
}

var s = Solution()
var n = [0,1,2,4,5,7]
print(s.summaryRanges(n))


