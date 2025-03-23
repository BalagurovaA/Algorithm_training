//
//  110.swift
//  
//
//  Created by Kristofer Sartorial on 3/23/25.
//

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
    func isBalanced(_ root: TreeNode?) -> Bool {
  
        return dfs(root).0
    }
    
    func dfs(_ root: TreeNode?) -> (Bool, Int) {
        if root == nil { return (true, 0) }
        
        var left = dfs(root?.left)
        var right = dfs(root?.right)
        var balanced = (abs(right.1 - left.1) <= 1) && left.0 && right.0
        return (balanced, 1 + max(left.1, right.1))
    }
}
