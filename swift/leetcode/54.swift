// 54
import Foundation

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        
        var final: [Int] = []
        var top = 0
        var bottom = matrix.count
        var left = 0
        var right = matrix[0].count
        
        
        while left < right && top < bottom{
            
            //  ->
            for i in left..<right {
                final.append(matrix[top][i])
            }
            top += 1
            
            // |
            // v
            
            for i in top..<bottom {
                final.append(matrix[i][right - 1])
            }
            right -= 1
            
            if !(left < right && top < bottom) {
                break
            }
            
            // <-
            
            for i in (left..<right).reversed() {
                final.append(matrix[bottom - 1][i])
            }
            bottom -= 1
            
            // ^
            // |
            for i in (top..<bottom).reversed() {
                final.append(matrix[i][left])
            }
            left += 1
            
            
        }
        return final
    }
}
    
    
    
    var sol = Solution()
//    var mat = [[1,2,3],[4,5,6],[7,8,9]]
    var mat = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
    
    print(sol.spiralOrder(mat))
