// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]
        )
    ],
    dependencies: [
        /*
         If you change the URL, the build error should be resolved. When changing the URL, make sure to proceed with 'Update to Latest Package Versions' and 'Clean Build Folder'.
         */
        .package(url: "https://github.com/apple/swift-foundation.git", branch: "main")
//        .package(url: "https://github.com/pookjw/swift-foundation.git", branch: "main")
    ],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: [
                .product(name: "FoundationPreview", package: "swift-foundation")
            ],
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        )
    ]
)
