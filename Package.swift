// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InventoryMgmt",
    products: [
        .library(
            name: "InventoryMgmt",
            targets: ["InventoryMgmt"])
    ],
     dependencies: [
        .package(url: "https://github.com/birdrides/mockingbird.git", .upToNextMinor(from: "0.20.0"))
    ],
    targets: [
        .target(
            name: "InventoryMgmt",
            path: "Sources"),
        .testTarget(
            name: "InventoryMgmtTests",
            dependencies: ["InventoryMgmt",
                .product(name: "Mockingbird", package: "mockingbird")
            ],
            path: "Tests"
        ),
    ]
)
