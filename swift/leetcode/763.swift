// 763

import Foundation

class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        let strArr = Array(s)
        var lastIndices: [Character: Int] = [:]
        
        
        for i in 0..<strArr.count {
            lastIndices[strArr[i]] = i
        }
        
        var size = 0
        var end = 0
        var finish: [Int] = []
        
        for i in 0..<strArr.count {
            
            size += 1
            end = max(lastIndices[strArr[i]]!, end)
            
            if i == end {
                finish.append(size)
                size = 0
            }

        }

        return finish
    }
}

var sol = Solution()
var s = "ababcbacadefegdehijhklij"
print(sol.partitionLabels(s))
