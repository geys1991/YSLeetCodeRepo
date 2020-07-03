/*
 * @lc app=leetcode.cn id=15 lang=swift
 *
 * [15] 三数之和
 */

// @lc code=start
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var tempNums = nums
        tempNums.sort()
        let count = tempNums.count
        var res: [[Int]] = []

        for (index, item) in tempNums.enumerated() {
            if index >= tempNums.count - 2 {
                break
            }
            if index > 0, tempNums[index] == tempNums[index - 1] {
                continue
            }
            twoSum(tempNums, -item, index + 1, count - 1, &res)
            print()
        }
        return res
    }

    func twoSum(_ nums: [Int], _ target: Int, _ start: Int, _ end: Int, _ ans: inout [[Int]]) {
        var startIndex: Int = start
        var endIndex: Int = end

        while startIndex < endIndex {
            if nums[startIndex] + nums[endIndex] == target {
                var res: [Int] = []
                res.append(-target)
                res.append(nums[startIndex])
                res.append(nums[endIndex])
                ans.append(res)
                while startIndex < endIndex, nums[startIndex + 1] == nums[startIndex] {
                    startIndex += 1
                }
                while startIndex < endIndex, nums[endIndex - 1] == nums[endIndex] {
                    endIndex -= 1
                }
                startIndex += 1
                endIndex -= 1
            } else if nums[startIndex] + nums[endIndex] < target {
                startIndex += 1
            } else {
                endIndex -= 1
            }
        }
    }
}

// @lc code=end
