
import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dic: [Character: Int] = [:]
        
        var chars = Array(s)
        for char in chars {
            dic[char] = (dic[char] ?? 0) + 1
        }
        
        for i in 0..<s.count {
            let char = chars[i]
            if dic[char] == 1 {
                return i
            }
        }
        return -1
    }
}
    
    
    
    
    
    var sol = Solution()
    var s = "aabb"
    print(sol.firstUniqChar(s))
