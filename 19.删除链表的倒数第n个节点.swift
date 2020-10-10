/*
 * @lc app=leetcode.cn id=19 lang=swift
 *
 * [19] 删除链表的倒数第N个节点
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        if n <= 0 {
            return nil
        }

        var fast: ListNode? = head
        var slow: ListNode? = head

        for _ in 0 ..< n {
            fast = fast?.next
        }

        if fast == nil {
            return head?.next
        }

        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }

        slow?.next = slow?.next?.next
        return head

        // 循环两次
        // if head == nil {
        //     return nil
        // }
        // if n <= 0 {
        //     return nil
        // }
        // var count: Int = 0
        // var currentNode = head

        // while currentNode != nil {
        //     count += 1
        //     currentNode = currentNode?.next
        // }
        // currentNode = head
        // if count - n != 0 {
        //     for _ in 1 ..< count - n {
        //         currentNode = currentNode?.next
        //     }

        //     let temp = currentNode?.next
        //     currentNode?.next = nil
        //     currentNode?.next = temp?.next
        //     return head
        // } else {
        //     let temp = currentNode
        //     currentNode = nil
        //     currentNode = temp?.next
        //     return currentNode
        // }
    }
}

// @lc code=end
