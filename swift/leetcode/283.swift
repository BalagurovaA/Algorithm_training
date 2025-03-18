import Foundation

//283

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var right = 0
        for left in 0..<nums.count {
            
            //            while nums[right] == 0 {
            //                right += 1
            //            }
            if nums[left] != 0 {
                nums.swapAt(left, right)
                right += 1
            }
            
        }
    }
}

var s = Solution()
var a = [0,1,0,3,12]

s.moveZeroes(&a)
print(a)
