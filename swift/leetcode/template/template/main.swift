import Foundation

//771
class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var jewelsSet: Set<Character> = []
        var stonesDic: [Character: Int] = [:]
        for j in jewels {
            jewelsSet.insert(j)
        }
        
        for stone in stones {
            stonesDic[stone] = (stonesDic[stone] ?? 0) + 1
        }
        
        var count = 0
        for jew in jewels {
            if stonesDic.keys.contains(jew) {
                count += stonesDic[jew]!
            }
        }
        
        return count
        
        
    }
}

var s = Solution()
var st = "ZZ"
var jew = "z"
print(s.numJewelsInStones(jew, st))

