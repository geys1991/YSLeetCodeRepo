/*
 * @lc app=leetcode.cn id=11 lang=swift
 *
 * [11] 盛最多水的容器
 */

// @lc code=start
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        if height.count < 2 {
            return 0
        }

        var startIndex: Int = 0
        var endIndex: Int = height.count - 1

        var maxArea: Int = 0

        while startIndex < endIndex {
            let startValue = height[startIndex]
            let endValue = height[endIndex]
            maxArea = max((endIndex - startIndex) * min(startValue, endValue), maxArea)
            if startValue < endValue {
                startIndex += 1
            } else {
                endIndex -= 1
            }
        }

        return maxArea
    }
}

// @lc code=end
