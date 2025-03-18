import Foundation

class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        
        var n1 = Array(Set<Int>(nums1))
        var n2 = Set<Int>(nums2)

        var res1: Set<Int> = []
        
        for i in 0..<n1.count {
            
            if !n2.contains(n1[i]) {
                res1.insert(n1[i])
            } else {
                n2.remove(n1[i])
            }
        }
        return [Array(res1).sorted(), Array(n2).sorted()]
    }
}


//быстрее и экономичнее по памяти
//class Solution {
//    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
//        var set1 = Set<Int>(nums1)
//        var set2 = Set<Int>(nums2)
//
//        var arr1 = Array(set1.subtracting(set2))
//        var arr2 = Array(set2.subtracting(set1))
//        return [arr1, arr2]
//
//    }
//}

var s = Solution()
var nums1 = [-3,6,-5,4,5,5]
var nums2 = [6,6,-3,-3,3,5]

print(s.findDifference(nums1, nums2))
