//import Foundation
//
//
//func binary_search(_ arr: [Int], _ item: Int) -> Int? {
//var low = 0
//var high = arr.count - 1
//
//while low <= high{
//    let mid = (low + high) / 2
//    let guess = arr[mid]
//    if guess == item {
//        return mid
//    }
//    else if guess > item {
//        high = mid - 1
//    } else {
//        low = mid + 1
//    }
//}
//return nil
//}
//
//
//
//let my_list = [1, 3, 5, 7, 9]
//
//if let index = binary_search(my_list, 9) {
//    print("Item found at index: \(index)")
//} else {
//    print("Item not found")
//}
//
//if let index = binary_search(my_list, -1) {
//    print("Item found at index: \(index)")
//} else {
//    print("Item not found")
//}


//import Foundation
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



