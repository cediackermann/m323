// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "m323",
  platforms: [.macOS(.v15)],
  targets: [
    .executableTarget(
      name: "m323",
      path: "Sources/m323"
    ),
    .executableTarget(
      name: "WeDontLikeCharA",
      path: "Sources/WeDontLikeCharA"
    ),
    .executableTarget(
      name: "Aufgabe3",
      path: "Sources/Aufgabe3",
      exclude: ["PureOrNotPure.md"]
    ),
    .executableTarget(name: "01_MapUebungen", path: "Sources/Aufgabe4/01_MapUebungen"),
    .executableTarget(name: "02_FilterUebungen", path: "Sources/Aufgabe4/02_FilterUebungen"),
    .executableTarget(
      name: "03_MapUndFilterUebungen", path: "Sources/Aufgabe4/03_MapUndFilterUebungen"),
    .executableTarget(name: "04_FoldLeftUebungen", path: "Sources/Aufgabe4/04_FoldLeftUebungen"),
    .executableTarget(name: "05_FlatMapUebungen", path: "Sources/Aufgabe4/05_FlatMapUebungen"),
    .executableTarget(
      name: "06_ForComprehensionsUebungen", path: "Sources/Aufgabe4/06_ForComprehensionsUebungen"),
    .executableTarget(name: "LeetCode", path: "Sources/LeetCode"),
    .testTarget(
      name: "m323Tests",
      dependencies: ["m323"]
    ),
  ]
)
