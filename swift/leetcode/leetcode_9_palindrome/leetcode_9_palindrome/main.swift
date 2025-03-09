import Foundation

//медленное решение

//class Solution {
//    func isPalindrome(_ x: Int) -> Bool {
//        var palindr = String(x)
//        var left = palindr.startIndex
//        var right = palindr.index(before: palindr.endIndex)
//
//        while left < right {
//            if palindr[left] != palindr[right] {
//                return false
//            }
//            left = palindr.index(after: left)
//            right = palindr.index(before: right)
//
//        }
//        return true
//    }
//}

//пробую решить быстрее
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if (x < 0) || (x % 10 == 0 && x != 0)  {
            return false
        }
        
        var half: Int = 0
        var palindr = x
        while (palindr > half)  {
            half = (half * 10) + (palindr % 10)
            palindr = palindr / 10
        }
        return palindr == half || half / 10 == palindr ? true : false
    }
}




var a = Solution()
if let b = Int(readLine()!) {
    print(a.isPalindrome(b))
}

