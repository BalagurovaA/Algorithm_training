import Foundation
//
//class Solution {
//    func search(_ nums: [Int], _ target: Int) -> Int {
//
//
//        var low = 0
//        var high = nums.count - 1
//
//
//        while low <= high {
//           let mid = (low + high) / 2
//            let guess = nums[mid]
//
//            if guess == target {
//                return nums.firstIndex(of: nums[mid])!
//            }
//            else if guess < target {
//                low = mid + 1
//            } else if guess > target {
//                high = mid - 1
//            }
//        }
//        return -1
//    }
//}
//
//let sol = Solution()
//let list: [Int] = [1, 2, 3, 4, 5, 6]
//let target = 77
//
//if target == sol.search(list, target) {
//    print("target is found", target)
//} else {
//    print("target is NOT found")
//}


//let sol = Solution()
//let list: [Int] = [1, 2, 3, 4, 5, 6]
//let target = 3
//
//if target == sol.search(list, target) {
//    print("target is found", target)
//} else {
//    print("target is NOT found")
//}
//

print(factr(10))
