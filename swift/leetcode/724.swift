// 724

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var sum = nums[0]
        for i in 1..<nums.count {
            sum += nums[i]
        }
        
        var rightSum = 0
        var leftSum = 0
        for i in 0..<nums.count {
            
            rightSum = sum - nums[i] - leftSum
            if leftSum == rightSum {
                return i
            }
            var a = nums[i]
            leftSum += a
        
        }
        
        return -1
    }
}
