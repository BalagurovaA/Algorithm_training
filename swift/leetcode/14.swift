// 14

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        if strs.contains("") { return "" }
        var res = ""

        let firstStrArr = Array(strs[0])

        for i in 0..<firstStrArr.count {
            for s in strs {
                if i >= Array(s).count || firstStrArr[i] != Array(s)[i]  {
                    return res
                }
            }
            res += String(Array(strs[0])[i])
        }
        return res
    }
}

var sol = Solution()
var s1 = ["tag", "flag", "mag"]

print(sol.longestCommonPrefix(s1))

