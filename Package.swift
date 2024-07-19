// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SIScoresStrip",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SIScoresStrip",
            targets: ["SIScoresStrip"]),
    ],
    dependencies: [
        .package(url: "https://github.com/si-ajinkya-sonar/SINetworking", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SIScoresStrip",
            dependencies: ["SINetworking"],
            path: "Sources",
            resources: [
                .process("Resources")
            ]),
        .testTarget(
            name: "SIScoresStripTests",
            dependencies: ["SIScoresStrip"]),
    ]
)
