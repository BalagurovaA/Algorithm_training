import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums[0] }
        var n: [Int: Int] = [:]
        for i in 0..<nums.count {
            if n[nums[i]] != nil {
                n[nums[i]]! += 1
            } else {
                n[nums[i]] = 1
            }
        }
        var key = 0
        for (key, value) in n {
            if value == 1 {
                return key
            }
        }
        
        return key
    }
}

//var s = Solution()
//var n =  [2,2,1]
//print(s.singleNumber(n))
