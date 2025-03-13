

import Foundation
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        
        
        let sumDia = n
        print(nums.reduce(0, {$0 + $1}))
        print([0,nums.count].reduce(0, {$0 + $1}))
              
        return nums.reduce(0, {$0 + $1}) - [0,nums.count].reduce(0, {$0 + $1})
        
        
    }
}
var sol = Solution()
let nums = [1, 2]
print(sol.missingNumber(nums))

