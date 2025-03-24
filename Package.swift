// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// carthage build --no-skip-current --use-xcframeworks

import PackageDescription

let package = Package(
    name: "pop",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "pop",
            targets: ["pop"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "pop",
            path: "Carthage/Build/pop.xcframework"),
        .testTarget(
            name: "popTests",
            dependencies: ["pop"]
        ),
    ]
)
