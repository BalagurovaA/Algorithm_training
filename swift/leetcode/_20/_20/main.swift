
import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {return false}
        var array: [Character] = []
        var index = s.startIndex
        for i in 0..<s.count {
            
            if s[index] == "(" || s[index] == "{" ||  s[index] == "["{
                array.append(s[index])
            } else {
                switch s[index] {
                case  ")" :
                    if array.last == "(" {
                        array.removeLast()
                    } else {
                        return false
                    }
                case "}":
                    if array.last == "{" {
                        array.removeLast()
                    } else {
                        return false
                    }
                case "]":
                    if array.last == "[" {
                        array.removeLast()
                    } else {
                        return false
                    }
                default:
                    return false
                    
                }
                
            }
            
            index = s.index(after: index)
        
        }
        return array.isEmpty ? true : false
    }
}

var s = Solution()
var str = "(("
print(s.isValid(str))
