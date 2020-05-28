/*
 * @lc app=leetcode.cn id=2 lang=swift
 *
 * [2] 两数相加
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let list1 = l1 else {
      return l2
    }
    guard let list2 = l2 else {
      return l1
    }

    var l1Node: ListNode? = list1
    var l2Node: ListNode? = list2
    var tempSum: Int = 0
    let resultNode: ListNode = ListNode(0)
    var resultTemp = resultNode

    while l1Node != nil || l2Node != nil || tempSum != 0 {
      let node1Value = l1Node?.val ?? 0
      let node2Value = l2Node?.val ?? 0

      let itemSum = node1Value + node2Value + tempSum
      tempSum = itemSum / 10

      let sumNode = ListNode(itemSum % 10)
      resultTemp.next = sumNode
      resultTemp = sumNode

      if l1Node != nil {
        l1Node = l1Node?.next
      }
      if l2Node != nil {
        l2Node = l2Node?.next
      }
    }

    return resultNode.next
  }
}

// @lc code=end
