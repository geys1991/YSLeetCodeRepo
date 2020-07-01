/*
 * @lc app=leetcode.cn id=14 lang=swift
 *
 * [14] 最长公共前缀
 */

// @lc code=start
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 {
            return strs.first ?? ""
        }
        if strs.count == 0 {
            return ""
        }
        return commonChar(strs, index: 0)
    }

    func commonChar(_ chars: [String], index: Int) -> String {
        let firstStr: String = chars.first ?? ""
        var firstStringChar = currentChar(firstStr, index: index)

        for innerIndex in 1 ..< chars.count {
            let currentStr = chars[innerIndex]
            let currentStringChar = currentChar(currentStr, index: index)

            if currentStringChar != firstStringChar {
                firstStringChar = ""
                break
            }
        }
        if firstStringChar == "" {
            return firstStringChar
        }
        return firstStringChar + commonChar(chars, index: index + 1)
    }

    func currentChar(_ str: String, index: Int) -> String {
        if str == "" || index + 1 > str.count {
            return ""
        }
        let startIndex = str.index(str.startIndex, offsetBy: index)
        let endIndex = str.index(str.startIndex, offsetBy: index + 1)
        let currentChar = String(str[startIndex ..< endIndex])
        return currentChar
    }
}

// @lc code=end
