import Foundation

// 3.1
func calculateSum(items: [Int]) -> Int {
  var sum = 0
  for item in items {
    sum += item
  }
  return sum
}

let items = [1, 2, 3, 4, 5]
print(calculateSum(items: items))

// 3.2
func calculateAverage(items: [Int]) -> Int {
  let sum = items.reduce(0, +)

  if !items.isEmpty {
    let avg = sum / items.count
    return avg
  }

  return 0
}

print(calculateAverage(items: items))

// 3.3

func sortListAlphabetical(items: [String]) -> [String] {
  let itemsCopy = items
  return itemsCopy.sorted()
}

let stringItems = ["ABC", "CDF", "BDC"]

print(sortListAlphabetical(items: stringItems))

// 3.4

struct ComplexType {
  var date = Date()
  var priority: Int
  var title: String
}

func sortComplexType(items: [ComplexType]) -> [ComplexType] {
  let itemsCopy = items

  return itemsCopy.sorted {
    ($0.date, $0.priority, $0.title) < ($1.date, $1.priority, $1.title)
  }
}

let now = Date()
let calendar = Calendar.current

let sampleData = [
  ComplexType(
    date: now,
    priority: 1,
    title: "Submit Quarterly Report"
  ),
  ComplexType(
    date: calendar.date(byAdding: .day, value: -1, to: now)!,
    priority: 2,
    title: "Review Pull Request"
  ),
  ComplexType(
    date: calendar.date(byAdding: .day, value: 1, to: now)!,
    priority: 1,
    title: "Project Kickoff Meeting"
  ),
  ComplexType(
    date: now,
    priority: 3,
    title: "Update Documentation"
  ),
  ComplexType(
    date: calendar.date(byAdding: .hour, value: -5, to: now)!,
    priority: 2,
    title: "Check System Logs"
  ),
]

print(sortComplexType(items: sampleData))

// Aufgabe 3.5

struct Tree {
  var branches: [Branch]
}

struct Branch {
  var branches: [Branch]
  var leaves: [Leaf]
}

struct Leaf {
  var color: String
  var name: String
}

let leafA = Leaf(color: "Green", name: "Oak Leaf Alpha")
let leafB = Leaf(color: "Yellow", name: "Oak Leaf Beta")
let leafC = Leaf(color: "Green", name: "Oak Leaf Gamma")

let smallBranch = Branch(
  branches: [],
  leaves: [leafC]
)

let mainBranch1 = Branch(
  branches: [smallBranch],  // Contains the sub-branch
  leaves: [leafA]
)

let mainBranch2 = Branch(
  branches: [],
  leaves: [leafB]
)

let myTree = Tree(branches: [mainBranch1, mainBranch2])

func getLeaves(tree: Tree) -> [Leaf] {
  var leaves = [Leaf]()
  var stack = tree.branches
  while !stack.isEmpty {
    let currentBranch = stack.removeLast()

    leaves.append(contentsOf: currentBranch.leaves)

    stack.append(contentsOf: currentBranch.branches)

  }

  return leaves
}

let result = getLeaves(tree: myTree)
for leaf in result {
  print("\(leaf.name) (\(leaf.color))")
}
