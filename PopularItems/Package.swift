// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PopularItems",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PopularItemsData",
            targets: ["PopularItemsData"]),
        .library(
            name: "PopularItemsDomain",
            targets: ["PopularItemsDomain"]),
        .library(
            name: "PopularItemsPresentation",
            targets: ["PopularItemsPresentation"])
    ],
    dependencies: [.package(path: "../CoreDomain")],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PopularItemsData",
            dependencies: ["PopularItemsDomain"]),
        .target(
            name: "PopularItemsDomain",
            dependencies: ["CoreDomain"]),
        .target(
            name: "PopularItemsPresentation",
            dependencies: ["PopularItemsDomain"])
    ]
)
