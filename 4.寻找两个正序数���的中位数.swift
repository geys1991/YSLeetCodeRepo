/*
 * @lc app=leetcode.cn id=4 lang=swift
 *
 * [4] 寻找两个正序数组的中位数
 */

// @lc code=start
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let m = nums1.count
        let n = nums2.count

        let left = (m + n + 1) / 2
        let right = (m + n + 2) / 2
        let res = (findKValue(nums1, i: 0, nums2: nums2, j: 0, k: left) + findKValue(nums1, i: 0, nums2: nums2, j: 0, k: right)) / 2.0
        return res
    }

    func findKValue(_ nums1: [Int], i: Int, nums2: [Int], j: Int, k: Int) -> Double {
        if i >= nums1.count {
            return Double(nums2[j + k - 1])
        }
        if j >= nums2.count {
            return Double(nums1[i + k - 1])
        }
        if k == 1 {
            return Double(min(nums1[i], nums2[j]))
        }
        let midValue1: Int = i + k / 2 - 1 < nums1.count ? nums1[i + k / 2 - 1] : Int.max
        let midValue2: Int = j + k / 2 - 1 < nums2.count ? nums2[j + k / 2 - 1] : Int.max
        if midValue1 < midValue2 {
            return findKValue(nums1, i: i + k / 2, nums2: nums2, j: j, k: k - k / 2)
        } else {
            return findKValue(nums1, i: i, nums2: nums2, j: j + k / 2, k: k - k / 2)
        }
    }
}

// @lc code=end
