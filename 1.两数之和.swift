/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var res: [Int: Int] = [:]
  if nums.count <= 1 {
    return []
  }
  
  var result: [Int] = []
  for (index, element) in nums.enumerated() {
    res[element] = index
  }
  for (index, element) in nums.enumerated() {
    let targetElement = target - element
    if res.keys.contains(targetElement) && res[targetElement] != index {
      result.append(index)
      result.append(res[targetElement]!)
      break
    }
  }
  
  return result
}
}
// @lc code=end

