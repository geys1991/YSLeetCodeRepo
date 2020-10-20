/*
 * @lc app=leetcode.cn id=137 lang=swift
 *
 * [137] 只出现一次的数字 II
 */

// @lc code=start
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var a = 0
        var b = 0

        for item in nums {
            b = (b ^ item) & ~a
            a = (a ^ item) & ~b
        }
        return b
    }
}

// @lc code=end
