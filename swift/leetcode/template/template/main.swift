import Foundation

// 206

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var prev: ListNode? = nil
        var current = head
        
        while current != nil {
            var nextNode = current?.next
            current?.next = prev
            prev = current
            current = nextNode
        }
        
        return prev
    }
}

var sol = Solution()
var list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, nil)))))

var l = sol.reverseList(list)
while l != nil {

    print(l?.val)
    l = l?.next
}
