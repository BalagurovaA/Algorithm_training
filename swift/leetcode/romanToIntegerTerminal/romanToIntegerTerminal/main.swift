
import Foundation

extension String {
    subscript(i: Int) -> Character {
        let index = self.index(self.startIndex, offsetBy: i)
        return self[index]
    }
}
//это быстрый способ

class Solution {
    
    func romanToInt(_ s: String) -> Int {

        var numberType: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        
        var total = 0
        
        for i in 0..<s.count - 1{
            
//            let curIndex = s.index(s.startIndex, offsetBy: i)
//            let nextIndex = s.index(curIndex, offsetBy: 1)
            
            var curNumb = numberType[s[i]]!
            var nextNumb = numberType[s[i + 1]]!
            if curNumb < nextNumb {
                total -= curNumb
            } else {
                total += curNumb
            }
        }
        if let lastChar = s.last {
            total += numberType[lastChar]!
        }
        return total
    }
}


//class Solution {
//    
//    func romanToInt(_ s: String) -> Int {
//
//        var numberType: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
//        
//        var total = 0
//        
//        for i in 0..<s.count - 1 {
//            let curIndex = s.index(s.startIndex, offsetBy: i)
//            let nextIndex = s.index(curIndex, offsetBy: 1)
//            
//            let curNumb = numberType[s[curIndex]]!
//            let nextNumb = numberType[s[nextIndex]]!
//            
//            if curNumb < nextNumb {
//                total -= curNumb
//            } else {
//                total += curNumb
//            }
//        }
//
//        // Добавляем значение последнего символа
//        if let lastChar = s.last {
//            total += numberType[lastChar]!
//        }
//        
//        return total
//    }
//}









//супер медленный способ

//class Solution {
//
//    func romanToInt(_ s: String) -> Int {
//
//        var numberType: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
//
//        var total = 0
//        var str = s.replacingOccurrences(of: "IV", with: "IIII")
//        str = str.replacingOccurrences(of: "IV", with: "IIII")
//        str = str.replacingOccurrences(of: "IX", with: "VIIII")
//        str = str.replacingOccurrences(of: "XL", with: "XXXX")
//        str = str.replacingOccurrences(of: "XC", with: "LXXXX")
//        str = str.replacingOccurrences(of: "CD", with: "CCCC")
//        str = str.replacingOccurrences(of: "DM", with: "DDDD")
//        
//        for i in 0..<str.count {
//            total += numberType[str[i]]!
//        }
//
//        return total
//    }
//}

//str = str.replacingOccurrences(of: "o", with: "x")


var sol = Solution()
var s = "LVIII"
print(sol.romanToInt(s))
