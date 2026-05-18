// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "m323",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "m323"
        ),
        .executableTarget(
            name: "WeDontLikeCharA",
            path: "02",
            sources: ["WeDontLikeCharA.swift"]
        ),
        .executableTarget(
            name: "Aufgabe3",
            path: "03",
            sources: ["Aufgabe3.swift"]
        ),
        .testTarget(
            name: "m323Tests",
            dependencies: ["m323"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
