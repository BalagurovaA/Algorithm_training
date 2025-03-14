import Foundation


 public class ListNode {
    public var val: Int
     public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var l1 = list1
        var l2 = list2
        
        let list3 = ListNode()
        var l3: ListNode? = list3
        
        while l1 != nil && l2 != nil {
            
            if l1!.val <= l2!.val {
                
                l3?.next = ListNode(l1!.val)
                l1 = l1?.next
                
            } else {
                l3?.next = ListNode(l2!.val)
                
                l2 = l2?.next
            }
            
            l3 = l3?.next
           
        }
        
        if l1 != nil {
            l3?.next = l1
        } else {
            l3?.next = l2
        }

        return list3.next
    }
    
}

let list1 = ListNode(1, ListNode(2, ListNode(4)))
let list2 = ListNode(1, ListNode(3, ListNode(4)))

var sol = Solution()
var a = sol.mergeTwoLists(list1, list2)
print(sol.mergeTwoLists(list1, list2) )
while a != nil {
    print(a?.val)
    a = a?.next
}

//print(sol.isUgly(i))
