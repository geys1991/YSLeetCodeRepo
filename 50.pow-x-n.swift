/*
 * @lc app=leetcode.cn id=50 lang=swift
 *
 * [50] Pow(x, n)
 */

// @lc code=start
class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }
        var res: Double = 1.0
        var miV = n < 0 ? 1 / x : x
        var temp: Int = n < 0 ? (-1 * n) : n

        while temp > 0 {
            if (temp & 1) != 0 {
                res = Double(res) * miV
            }
            miV = miV * miV
            temp >>= 1
        }
        return res
    }
}

// @lc code=end
