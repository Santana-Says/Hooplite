// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Core",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CoreData",
            targets: ["CoreData"]),
        .library(
            name: "CoreDomain",
            targets: ["CoreDomain"]),
        .library(
            name: "CorePresentation",
            targets: ["CorePresentation"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CoreData",
            dependencies: ["CoreDomain"]),
        .target(
            name: "CoreDomain"),
        .target(
            name: "CorePresentation",
            dependencies: ["CoreDomain"])

    ]
)
