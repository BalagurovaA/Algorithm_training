//392
// это анечка брутфорс
//class Solution {
//    func isSubsequence(_ s: String, _ t: String) -> Bool {
//
//        var sArr = Array(s)
//        var tArr = Array(t)
//
//        var p1 = 0
//        var count = 0
//
//        for i in 0..<t.count {
//
//            while tArr[i] != sArr[p1] {
//                p1 += 1
//            }
//
//            if tArr[i] == sArr[p1] {
//                count += 1
//            }
//            p1 += 1
//        }
//        return count == tArr.count ? true : false
//    }
//}

import Foundation
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {return true }
        if s.count > t.count {return false}
        
        let sArr = Array(s)
        let tArr = Array(t)
        
        var p2 = 0
        
        
        for i in 0..<tArr.count {
            if p2 < sArr.count && tArr[i] == sArr[p2] {
                p2 += 1
                
            }
        }
        return p2 == sArr.count ? true : false
        
    }
}


var so = Solution()
var t = "abc"
var s = "b"

print(so.isSubsequence(s, t))


