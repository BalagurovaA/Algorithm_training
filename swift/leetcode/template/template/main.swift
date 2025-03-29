// 498
class Solution {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        var I = mat.count - 1
        var J = mat[0].count - 1
        var i = 0
        var j = 0
        var up = true
        var res: [Int] = []
        //up
        while res.count < mat.count * mat[0].count {
            if up == true {
                while i > 0 && j < J {
                    res.append(mat[i][j])
                    i -= 1
                    j += 1
                }
                res.append(mat[i][j])
                if j == J {
                    i += 1
                } else {
                    j += 1
                }
                
            } else {
                while i < I && j > 0 {
                    res.append(mat[i][j])
                    i += 1
                    j -= 1
                }
                res.append(mat[i][j])
                if  i == I {
                    j += 1
                } else {
                    i += 1
                }
            }
            up = !up
            
        }
        
        return res
    }
}

var sol = Solution()
var m = [[1,2],[3,4]]
print(sol.findDiagonalOrder(m))
