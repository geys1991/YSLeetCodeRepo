/*
 * @lc app=leetcode.cn id=395 lang=swift
 *
 * [395] 至少有K个重复字符的最长子串
 */

// @lc code=start
class Solution {
    func longestSubstring(_ s: String, _ k: Int) -> Int {
        // 数据结构 --- char：(count, index)
        if s.count == 0 {
            return 0
        }

        var dic: [String.Element: Int] = [:]

        for (_, element) in s.enumerated() {
            var info: Int = dic[element] ?? 0
            info += 1
            dic[element] = info
        }
        var subSpilt: String.Index = s.startIndex
        var isLongest = true
        for item in dic {
            if item.value < k {
                subSpilt = s.firstIndex(of: item.key) ?? s.startIndex
                isLongest = false
                break
            }
        }
        if isLongest {
            return s.count
        } else {
            let ls = String(s.prefix(upTo: subSpilt))
            let subfixIndex = s.index(subSpilt, offsetBy: 1)
            let rs = String(s.suffix(from: subfixIndex))
            return max(longestSubstring(ls, k), longestSubstring(rs, k))
        }
    }
}

// @lc code=end
