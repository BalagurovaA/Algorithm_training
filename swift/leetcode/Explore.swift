// Explore
import Foundation


class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        var carry = 1
        
        for i in (0..<digits.count).reversed() {
          var sum = result[i] + carry
            result[i] = sum % 10
            carry = sum / 10
        
        }
        if carry >= 1 {
            result.insert(carry, at: 0)
        }

        return result
    }
}



var s = Solution()
var integ = [4,3,2,1]
print(s.plusOne(integ))


class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        let sortedNumbers = nums.sorted(by: >)
        
        var firstMax = sortedNumbers[0]
        var secondMax = sortedNumbers[1]
       
        if firstMax / 2 < secondMax {
            return -1
        } else {
            return nums.firstIndex(of: firstMax)!
        }
        
    }
}

var sol = Solution()
var nums = [1,2,3,4]

print(sol.dominantIndex(nums))
