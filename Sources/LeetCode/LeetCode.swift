import Foundation

//
//  LeetCode.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

class LeetCode {
    func hammingWeight(_ n: Int) -> Int {
        return n == 0 ? 0 : (n & 1) + hammingWeight(n >> 1)
    }

    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
    }

    func containsDuplicate(_ nums: [Int]) -> Bool {
        return nums.count != Set(nums).count
    }

    func sortedSquares(_ nums: [Int]) -> [Int] {
        return nums.map { $0 * $0 }.sorted()
    }

    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating: 1, count: nums.count)
        var prefix = [Int](repeating: 1, count: nums.count)
        var suffix = [Int](repeating: 1, count: nums.count)
        var runningProduct = 1
        for i in 0..<nums.count {
            prefix[i] = runningProduct
            runningProduct *= nums[i]
        }
        runningProduct = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            suffix[i] = runningProduct
            runningProduct *= nums[i]
            result[i] = prefix[i] * suffix[i]
        }

        return result
    }

}
