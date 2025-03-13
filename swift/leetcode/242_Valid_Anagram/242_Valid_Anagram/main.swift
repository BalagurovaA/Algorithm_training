
import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        var dicS: [Character: Int] = [:]
        var dicT: [Character: Int] = [:]
        
        for char in s {
            dicS[char, default: 0] += 1
        }
        for char in t {
            dicT[char, default: 0] += 1
        }
        return dicS == dicT

    }
}

var sol = Solution()
let s = "car"
let t = "car"

print(sol.isAnagram(s, t))
