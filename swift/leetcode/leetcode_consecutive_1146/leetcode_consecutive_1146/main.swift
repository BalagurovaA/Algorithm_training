import Foundation


class Solution {
    func maxPower(_ s: String) -> Int {
        
        guard !s.isEmpty else { return 0}
        
        let str = s
        var allPower = 1
        var curPower = 1
        var firstIndex = str.startIndex
        
        while firstIndex < str.endIndex  {
            let nextIndex = str.index(after: firstIndex)
            
            if nextIndex < str.endIndex && str[firstIndex] == str[nextIndex] {
                curPower += 1
                allPower = max(allPower, curPower)
            } else {
                curPower = 1
            }
            firstIndex = nextIndex
        }

        return allPower
    }
}

var sol = Solution()
let str = "aabbb"
print(sol.maxPower(str))
