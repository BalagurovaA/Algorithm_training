import Foundation
class Solution {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        if mat.isEmpty { return [] }
        
        let I = mat.count - 1
        let J = mat[I].count - 1
        
        var final: [Int] = []
        
        
        
        var i = 0
        var j = 0
        
        var UP = true
        while i <= I && j <= J {
            if UP == true {
                while i > 0 && j < J {
                    final.append(mat[i][j])
                    i -= 1
                    j += 1
                }
                final.append(mat[i][j])
                if j == J {
                    i += 1
                } else {
                    j += 1
                }

            } else {
                while i < I && j > 0 {
                    final.append(mat[i][j])
                    i += 1
                    j -= 1
                }
                final.append(mat[i][j])
                if i == I {
                    j += 1
                } else {
                    i += 1
                }
            }
            UP = !UP
            
        }
        return final
    }
}

var sol = Solution()
var mat = [[1,2,3],[4,5,6],[7,8,9]]
print(sol.findDiagonalOrder(mat))
