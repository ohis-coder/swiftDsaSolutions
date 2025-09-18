public class TreeNode {
    public var val: Int
    public var next: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func hasCycle(_ head: TreeNode?) -> Bool {
        guard head != nil else { return false }
        var slow = head
        var fast = head
        
        while (fast != nil && fast?.next != nil) {
            
            slow = slow?.next
            
            
            
            if fast === slow {
                return true
            }
        }
        return false
    }
}
