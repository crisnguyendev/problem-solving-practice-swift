//
//  2130. Maximum Twin Sum of a Linked List.swift
//  dsa
//
//  Created by Vu Nguyen on 3/25/25.
//

class MaximumTwinSumLinkedList {
    func pairSum(_ head: ListNode?) -> Int {
        var head = head
        var slow: ListNode? = head
        var fast: ListNode? = head
        while fast != nil, fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        var prev: ListNode? = nil
        var next: ListNode? = nil
        var current: ListNode? = slow
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        var reversed: ListNode? = prev
        var maxSum = Int.min
        while reversed != nil, head != nil {
            let sum: Int = (head?.val ?? 0) + (reversed?.val ?? 0)
            maxSum = max(maxSum, sum)
            head = head?.next
            reversed = reversed?.next
        }
        return maxSum
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
