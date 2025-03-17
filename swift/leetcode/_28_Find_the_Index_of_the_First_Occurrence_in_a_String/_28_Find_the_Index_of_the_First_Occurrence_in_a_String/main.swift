import Foundation
//долгое решение
//class Solution {
//    func strStr(_ haystack: String, _ needle: String) -> Int {
//        var haystackK = Array(haystack)
//        var needleE = Array(needle)
//        for i in 0..<haystack.count + 1 - needle.count {
//            for j in 0..<needle.count {
//                if haystackK[i + j] != needleE[j] {
//                    break
//                }
//                if j == needle.count - 1 {
//                    return i
//                }
//            }
//        }
//        return -1
//    }
//}

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {return 0}
        
        if needle.count > haystack.count {return -1}
        
        var h = Array(haystack)
        var n = Array(needle)
        
        for i in 0..<h.count - n.count + 1 {
            if Array(h[i..<i + n.count]) == n {
                return i
                
            }
        }

        return -1
    }
}

var sol = Solution()
var s1 = "abb"
var s2 = "abaaa"
print(sol.strStr(s1, s2))
