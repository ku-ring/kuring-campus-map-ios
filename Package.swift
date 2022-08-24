// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "kuring-campus-map-ios",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "kuring-campus-map-ios",
            targets: ["kuring-campus-map-ios"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "kuring-campus-map-ios",
            dependencies: []),
        .testTarget(
            name: "kuring-campus-map-iosTests",
            dependencies: ["kuring-campus-map-ios"]),
    ]
)
