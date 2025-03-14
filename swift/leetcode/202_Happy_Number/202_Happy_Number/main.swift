
import Foundation

class Solution {
    
    func isHappy(_ n: Int) -> Bool {
        var num = n
//        var squareN = 0
        var numb: Set<Int> = []
        
//        squareN = square(num)
//        numb.insert(squareN)
        
        while !numb.contains(num) {
            
            numb.insert(num)
            
            if num == 1 {
                return true
            }
            num = square(num)
        }
        return false
    }
    
    func square(_ n: Int) -> Int {
        var sum = 0
        var num = n
        while num > 0 {
            let digit = num % 10
            num /= 10
            sum += digit * digit
        }
        return sum
    }

}

var i = 19
var sol = Solution()
//print(sol.square(i))
print(sol.isHappy(i))
