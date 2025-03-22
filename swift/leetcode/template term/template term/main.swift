

// 557

import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        
        let words = s.components(separatedBy: " ")
        
        let reversedWords = words.map { reverse(String($0)) }
        return reversedWords.joined(separator: " ")
    }
    
    func reverse(_ str: String) -> String {
        var s = Array(str)
        var left = 0
        var right = s.count - 1
        while left < right {
            let a = s[left]
            
            s[left] = s[right]
            s[right] = a
            left += 1
            right -= 1
        }
        
        
        return String(s)
    }
}

var s = "Ding"
var so = Solution()
print(so.reverse(s))
