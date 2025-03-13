import Foundation

//очень долгое решение
//class Solution {
//    func quickSort(_ arr: [Int]) -> [Int] {
//        if arr.count < 2 {
//            return arr
//        } else {
//            let sortArr = arr
//            let first = sortArr[0]
//            let less = Array(sortArr.dropFirst().filter {$0 < first})
//            let greater = Array(sortArr.dropFirst().filter {$0 >= first})
//            
//            return quickSort(less) + Array(arrayLiteral: first) + quickSort(greater)
//        }
//        
//    }
//    
//    func sortedSquares(_ nums: [Int]) -> [Int] {
//        var sArr = nums
//        for i in 0 ..< nums.count {
//            sArr[i] = Int(pow(Double(nums[i]), 2))
//        }
//
//       return quickSort(sArr)
//    }
//}
//


import Foundation

class Solution {

    
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var sArr = nums
        for i in 0 ..< nums.count {
            sArr[i] = nums[i] * nums[i]
        }
       return sArr.sorted()
    }
}



var Sol = Solution()
var arr = [-7, -3, 2, 3, 11]
print(Sol.sortedSquares(arr))


