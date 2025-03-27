import Foundation

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var I = matrix.count - 1
        var J = matrix[I].count - 1
        
        var i = 0
        var j = 0
        
        var final: [Int] = []
        
        var HOR = true
        
        while i <= I && j <= J {
            if HOR == true {
                
                while j < J {
                    final.append(matrix[i][j])
                }
                
                
            }
        }
        
        return [0]
    }
}



var sol = Solution()
//var mat = [[1,2,3],[4,5,6],[7,8,9]]
var mat = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]

print(sol.spiralOrder(mat))
