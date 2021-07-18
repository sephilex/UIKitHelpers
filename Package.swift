// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "UIKitHelpers",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UIKitHelpers",
            targets: ["UIKitHelpers"]
        )
    ],
    targets: [
        .target(
            name: "UIKitHelpers",
            dependencies: []
        ),
        .testTarget(
            name: "UIKitHelpersTests",
            dependencies: ["UIKitHelpers"]
        )
    ]
)
