//
//  328. Odd Even Linked List.swift
//  dsa
//
//  Created by Vu Nguyen on 3/25/25.
//

class OdEvenLinkedList {
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

    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard let head = head, head.next != nil else {
            return head
        }
        var oddHead: ListNode? = head
        var evenHead: ListNode? = head.next
        var oddNode: ListNode? = oddHead
        var evenNode: ListNode? = evenHead
        while evenNode != nil, evenNode?.next != nil {
            oddNode?.next = evenNode?.next
            oddNode = oddNode?.next
            evenNode?.next = oddNode?.next
            evenNode = evenNode?.next
        }
        oddNode?.next = evenHead
        return oddHead
    }
}
