//
//  2095. Delete the Middle Node of a Linked List.swift
//  dsa
//
//  Created by Vu Nguyen on 3/24/25.
//

class DeleteMiddleNodeLinkedList {
    class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() {
            val = 0
            next = nil
        }

        public init(_ val: Int) {
            self.val = val
            next = nil
        }

        public init(_ val: Int, _ next: ListNode?) {
            self.val = val
            self.next = next
        }
    }

    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        var dummyNode = ListNode(0, head)
        var slow: ListNode? = dummyNode
        var fast: ListNode? = dummyNode.next
        while let fastNext = fast?.next {
            slow = slow?.next
            fast = fastNext.next
        }
        slow?.next = slow?.next?.next
        return dummyNode.next
    }
}
