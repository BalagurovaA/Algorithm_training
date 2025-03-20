

import Foundation
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let expect = ((1 + n) * n) / 2
        return expect - nums.reduce(0, +)
    }
}

var sol = Solution()
let nums = [0,1]
print(sol.missingNumber(nums))

