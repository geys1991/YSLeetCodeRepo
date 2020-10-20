/*
 * @lc app=leetcode.cn id=20 lang=swift
 *
 * [20] 有效的括号
 */

// @lc code=start
class Solution {
    func isValid(_ s: String) -> Bool {
        let count = s.count
        if count == 0 {
            return true
        }

        let charMap: [String.Element: String] = ["{": "}",
                                                 "(": ")",
                                                 "[": "]"]
        var stack: [String.Element] = []
        if count % 2 != 0 {
            return false
        }

        for (_, element) in s.enumerated() {
            let needMatchChar = stack.last
            if needMatchChar == nil {
                stack.append(element)
                continue
            }
            let ccc: String? = charMap[needMatchChar!]
            if ccc == String(element) {
                stack.removeLast()
            } else {
                stack.append(element)
            }
        }

        return stack.count == 0
    }
}

// @lc code=end
