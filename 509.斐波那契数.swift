/*
 * @lc app=leetcode.cn id=509 lang=swift
 *
 * [509] 斐波那契数
 */

// @lc code=start
class Solution {

    // 3，自底向上

    func fib(_ N: Int) -> Int {

        if N <= 1 {
            return N
        }

        var pre = 0
        var preNext = 1
        var summary = 0
        
        for index in 2...N {
            summary = pre + preNext 
            pre = preNext
            preNext = summary
        }

        return summary
    }


    // 2. 带有备忘录 自顶向下
    // var fibMap: [Int: Int] = [:]
    // func fib(_ N: Int) -> Int {
    //     return helper(N)
    // }

    // func helper(_ n: Int) -> Int {
    //     if n <= 1 {
    //         return n
    //     }
    //     if fibMap[n] != nil {
    //         return fibMap[n] ?? 0
    //     }
    //     fibMap[n] = helper(n-1)+helper(n-2)
    //     return fibMap[n] ?? 0
    // }
}
// @lc code=end