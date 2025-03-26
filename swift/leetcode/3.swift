// 3
import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var letters: Set<Character> = []
        let str = Array(s)
        var size = 0
        var left = 0
        
        
        for right in 0..<str.count {
            while letters.contains(str[right]) {
                letters.remove(str[left])
                left += 1
            }
            letters.insert(str[right])
            size = max(size, right - left + 1)
            
        }
        return size
    }
}


var s = Solution()
let str = "pwwkew"
print(s.lengthOfLongestSubstring(str))
