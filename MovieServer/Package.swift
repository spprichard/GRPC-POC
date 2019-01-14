// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MovieServer",
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", .exact("1.6.0")),
        .package(url: "https://github.com/apple/swift-protobuf.git", .exact("1.0.3")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MovieServer",
            dependencies: ["NIO", "SwiftProtobuf"]),
        .testTarget(
            name: "MovieServerTests",
            dependencies: ["MovieServer"]),
    ]
)
