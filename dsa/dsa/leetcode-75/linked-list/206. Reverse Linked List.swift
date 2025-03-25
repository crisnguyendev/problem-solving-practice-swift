//
//  206. Reverse Linked List.swift
//  dsa
//
//  Created by Vu Nguyen on 3/25/25.
//

class ReverseLinkedList {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head, head.next != nil else {
            return head
        }
        var prev: ListNode?
        var current: ListNode? = head
        var next: ListNode? = current?.next
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        return prev
    }

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
}
