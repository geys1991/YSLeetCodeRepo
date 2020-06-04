/*
 * @lc app=leetcode.cn id=7 lang=swift
 *
 * [7] 整数反转
 */

// @lc code=start
class Solution {
    func reverse(_ x: Int) -> Int {
        var res: String = x < 0 ? "-" : ""
        let abValue = x < 0 ? -1 * x : x
        let stringX = String(abValue)

        var startIndex: Int = 0
        var endIndex: Int = stringX.count - 1

        var ch: [String.Element] = stringX.compactMap { (char) -> String.Element in
            char
        }

        while startIndex < endIndex {
            let temp = ch[startIndex]
            ch[startIndex] = ch[endIndex]
            ch[endIndex] = temp

            startIndex += 1
            endIndex -= 1
        }
        ch.enumerated().forEach { element in
            res.append(element.element)
        }

        let max: Int = 0x7FFF_FFFF
        let min: Int = -1 * 0x8000_0000
        let resInt = Int(res)!

        if resInt <= max && resInt >= min {
            return resInt
        } else {
            return 0
        }
    }
}

// @lc code=end
