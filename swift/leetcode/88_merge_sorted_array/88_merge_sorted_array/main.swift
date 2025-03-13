import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var j = 0
        for i in m ..< nums1.count {
            nums1[i] = nums2[j]
            j += 1
        }
        nums1.sort()
        
    }
}

var nums1 = [1,2,3,0,0,0]
let m = 3
let nums2 = [2,5,6]
let n = 3

var sol = Solution()

sol.merge(&nums1, m, nums2, n)
print(nums1)

