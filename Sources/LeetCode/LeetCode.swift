import Foundation

enum LeetCode {
    static func hammingWeight(_ n: Int) -> Int {
        n == 0 ? 0 : (n & 1) + hammingWeight(n >> 1)
    }

    static func singleNumber(_ nums: [Int]) -> Int {
        nums.reduce(0, ^)
    }

    static func containsDuplicate(_ nums: [Int]) -> Bool {
        nums.count != Set(nums).count
    }

    static func sortedSquares(_ nums: [Int]) -> [Int] {
        nums.map { $0 * $0 }.sorted()
    }

    static func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = [Int](repeating: 1, count: n)

        var prefix = 1
        for i in 0..<n {
            result[i] = prefix
            prefix = nums[i]
        }

        var suffix = 1
        for i in stride(from: n - 1, through: 0, by: -1) {
            result[i] = suffix
            suffix = nums[i]
        }

        return result
    }

    static func invertTree(_ root: TreeNode?) -> TreeNode? {
        var invertedTree: TreeNode
        if root?.left != nil || root?.right != nil {
            guard let nodeVal = root?.val else {
            }
            invertedTree = TreeNode(nodeVal, root?.right, root?.left)
        }
        return invertedTree
    }
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
