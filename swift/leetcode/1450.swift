// 1450

import Foundation

class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var count = 0
        for i in 0..<startTime.count {
            let range =  startTime[i]...endTime[i]
            if range.contains(queryTime) {
                count += 1
            }
        }
        
        return count
    }
}

var s = Solution()
var start = [4]
var end = [4]
var qT = 4
print(s.busyStudent(start, end, qT))
