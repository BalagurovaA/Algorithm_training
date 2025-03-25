// 938

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        if root == nil { return 0 }
        if root!.val < low {
            return rangeSumBST(root!.right, low, high)
        }
        else if (root!.val) > high {
            return rangeSumBST(root!.left, low, high)
        }
        return root!.val + rangeSumBST(root!.right, low, high) +  rangeSumBST(root!.left, low, high)
        
        
    }
}

let node3 = TreeNode(3)
let node7 = TreeNode(7)
let node18 = TreeNode(18)

let node5 = TreeNode(5, node3, node7)
let node15 = TreeNode(15, nil, node18)
let root = TreeNode(10, node5, node15)


var sol = Solution()
print(sol.rangeSumBST(root, 7, 15))

