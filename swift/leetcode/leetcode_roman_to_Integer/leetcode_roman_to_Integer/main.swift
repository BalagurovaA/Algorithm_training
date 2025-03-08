
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
        
        var str = String(s.reversed())
        
        var total = 0
        for i in 0..<str.count {
//        for i in (0..<s.count).reversed() {
 
            if i == 0 {
                total += numberType[s[i]] ?? 0
            }
            else if numberType[s[i]]!  < numberType[s[i - 1]]! {
                total -= numberType[s[i]]!
            } else {
                total += numberType[s[i]]!
            }
        }
        
        
        
        
        return total
    }
}

var sol = Solution()
var s = "LVIII"
print(sol.romanToInt(s))
