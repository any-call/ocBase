// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ocBase",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ocBase",
            targets: ["ocBase"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ocBase",
            path: "Sources/ocBase",
            publicHeadersPath: "."   // ⭐ 非常关键 告诉 SwiftPM：这些 .h 都是对外公开的
        ),
        .testTarget(
            name: "ocBaseTests",
            dependencies: ["ocBase"]
        ),
    ]
)
