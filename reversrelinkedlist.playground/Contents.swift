class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head, let nextNode = head.next else {
            return head
        }
        let newHead = reverseList(nextNode)
        nextNode.next = head
        head.next = nil
        return newHead
    }
}
