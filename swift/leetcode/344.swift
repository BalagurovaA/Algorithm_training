
import Foundation

class Solution {
    func reverseString(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1
        while left < right {
            let a = s[left]
            s[left] = s[right]
            s[right] = a
            left += 1
            right -= 1
        }
        
    }
}

var s = Solution()
var str: [Character] = ["h","e","l","l","o"]

//s.reverseString(&str)
//print(str)
