// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Day 20",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(
            name: "Day 20",
            targets: ["Day 20"]),
    ],
    dependencies: [
        .package(
        url: "https://github.com/apple/swift-collections.git", 
        .upToNextMinor(from: "1.1.0") // or `.upToNextMajor
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "Day 20", dependencies: [
            .product(name: "Collections", package: "swift-collections")
        ], path: ".", sources: ["./main.swift"], resources: [.process("spec_one.txt"), .process("spec_two.txt"), .process("input.txt")]),
    ]
)
