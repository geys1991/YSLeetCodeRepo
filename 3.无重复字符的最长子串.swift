/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
class Solution {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    if s.count < 1 {
      return s.count
    }
    var cursor: Int = 0
    var maxLength: Int = 0
    var elementDic: [String.Element: Int] = [:]
    
    for (index, element) in s.enumerated() {
      if elementDic.keys.contains(element) {
        let duplictCursor = (elementDic[element] ?? 0) + 1
        if duplictCursor > cursor {
          cursor = duplictCursor
        }
      }
      maxLength = max(index - cursor, maxLength)
      elementDic[element] = index
    }
    return maxLength + 1
  }
}

// @lc code=end
