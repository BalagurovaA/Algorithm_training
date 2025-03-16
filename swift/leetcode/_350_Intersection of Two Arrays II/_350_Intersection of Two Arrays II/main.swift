import Foundation


class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dic: [Int: Int] = [:]
        var final: [Int] = []
        
        let less = nums1.count > nums2.count ? nums1 : nums2
        let bigger = nums1.count > nums2.count ? nums2 : nums1
        
        for number in less {
            if let count = dic[number] {
                dic[number] = count + 1
            } else {
                dic[number] = 1
            }
        }
        
        for number in bigger {
            if let count = dic[number], count > 0 {
                final.append(number)
                dic[number] = count - 1
            }
        }
        

        return final
    }
}
var arr1 = [1,2,2,1]
var arr2 = [2,2]
var sol = Solution()

print(sol.intersect(arr1, arr2) )


//
//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//
//    var dic1: [Int: Int] = [:]
//    var dic2: [Int: Int] = [:]
//
//    var finalArr: [Int] = []
//
//    if nums1.count > nums2.count {
//
//        for number in nums2 {
//            if let count = dic2[number] {
//                dic2[number] = count + 1
//            } else {
//                dic2[number] = 1
//            }
//        }
//
//        for i in 0..<nums1.count {
//            if dic2[nums1[i]] != nil {
//                dic2[nums1[i]]! -= 1
//            }
//        }
//
//
//        } else {
//            for number in nums1 {
//                if let count = dic1[number] {
//                    dic1[number] = count + 1
//                } else {
//                    dic1[number] = 1
//                }
//            }
//
//            for i in 0..<nums2.count {
//                if dic1[nums2[i]] != nil {
//                    dic1[nums2[i]]! -= 1
//                }
//            }
//        }
//        return []
//    }
