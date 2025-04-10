// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoSwiftyM3U8",
    platforms: [.iOS(.v15), .tvOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoSwiftyM3U8",
            targets: ["GoSwiftyM3U8"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GoSwiftyM3U8",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "GoSwiftyM3U8Tests",
            dependencies: [ "GoSwiftyM3U8" ],
            path: "Tests",
            resources: [
                .copy("Resources/AppleAdvanceStreamTS"),
                .copy("Resources/video-aes-128.m3u8")
            ]
        )
    ]
)
