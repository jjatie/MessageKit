// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MessageKit",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MessageKit",
            targets: ["MessageKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/jjatie/InputBarAccessoryView", from: "4.3.3"),
         .package(url: "https://github.com/Quick/Quick", from: "2.1.0"),
         .package(url: "https://github.com/Quick/Nimble", from: "8.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MessageKit",
            dependencies: ["InputBarAccessoryView"],
            path: "Sources"),
        .testTarget(
            name: "MessageKitTests",
            dependencies: ["MessageKit", "Quick", "Nimble"],
            path: "Tests"),
    ]
)
