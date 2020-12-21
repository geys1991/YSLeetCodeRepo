/*
 * @lc app=leetcode.cn id=905 lang=swift
 *
 * [905] 按奇偶排序数组
 */

// @lc code=start
class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var startIndex = 0
        var endIndex = A.count - 1
        var tempArray = A

        while startIndex <= endIndex {
            if tempArray[startIndex] % 2 == 1 && tempArray[endIndex] % 2 == 0 {
                let temp = tempArray[endIndex]
                tempArray[endIndex] = tempArray[startIndex]
                tempArray[startIndex] = temp
            } else {
                if tempArray[startIndex] % 2 == 0 {
                    startIndex += 1
                }
                if tempArray[endIndex] % 2 == 1 {
                    endIndex -= 1
                }
            }
        }

        return tempArray
    }
}

// @lc code=end
