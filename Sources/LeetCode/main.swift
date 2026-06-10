//
//  main.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

// print(LeetCode.hammingWeight(2_147_483_645))
// print(LeetCode.singleNumber([4, 1, 2, 1, 2]))
// print(LeetCode.containsDuplicate([1, 2, 3, 4]))
// print(LeetCode.productExceptSelf([-1, 1, 0, -3, 3]))

let tree = TreeNode(
    4,
    TreeNode(
        2,
        TreeNode(1),
        TreeNode(3)
    ),
    TreeNode(
        7,
        TreeNode(6),
        TreeNode(9)
    )
)
print(LeetCode.invertTree(tree))
