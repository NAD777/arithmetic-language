// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "arithmetic-language",
    dependencies: [
      .package(name: "Antlr4", url: "https://github.com/antlr/antlr4", from: "4.12.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "arithmetic-language",
            dependencies: ["Antlr4"]),
    ]
)
