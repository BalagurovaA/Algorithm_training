import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        var str = s.lowercased().filter {$0.isLetter || $0.isNumber}
        
        if str.isEmpty {return true}
        
        var left = str.startIndex
        var right = str.index(str.endIndex, offsetBy: -1)
        
        while left < right {
            if str[left] != str[right]{
                return false
                
            } else {
                left = str.index(after: left)
                right = str.index(before: right)
            }
        }
        return true
    }
}

var s = Solution()
var arr = "0P"
print(s.isPalindrome(arr))


