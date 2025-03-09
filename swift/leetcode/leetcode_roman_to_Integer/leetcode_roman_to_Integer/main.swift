
import Foundation

extension String {
    subscript(i: Int) -> Character {
        let index = self.index(self.startIndex, offsetBy: i)
        return self[index]
    }
}

class Solution {
    
    func romanToInt(_ s: String) -> Int {

        var numberType: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        
        var total = 0
        
        for i in 0..<s.count {
            var curNumb = numberType[s[i]]!
            var nextNumb = numberType[s[i + 1]]!
            if s[i] < s[i + 1] {
                total -= curNumb
            } else {
                total += curNumb
            }
        }

        return total
    }
}

var sol = Solution()
var s = "LVIII"
print(sol.romanToInt(s))
