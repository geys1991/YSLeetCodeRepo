/*
 * @lc app=leetcode.cn id=9 lang=swift
 *
 * [9] 回文数
 */

// @lc code=start
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var value = x
        var temp = 0
        while value != 0 {
            temp = temp * 10 + value % 10
            value = value / 10
        }

        return temp == x
    }
}

// @lc code=end
