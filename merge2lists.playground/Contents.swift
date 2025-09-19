public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let list3 = ListNode(val: 0)
        
        var current:ListNode? = list3
    
        var p1 = list1
        var p2 = list2
        
        while p1 != nil && p2 != nil {
            if p1!.val <= p2!.val {
                current?.next = p1
                p1 = p1?.next
            } else {
                current?.next = p2
                p2 = p2?.next
            }
            current = current?.next
        }
        if p1 != nil {
            current?.next = p1
        } else if p2 != nil {
            current?.next = p2
        }
        return list3.next
    }
}

    
