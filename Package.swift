 // swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "AICommandLineTool",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "ai-cli",
            targets: ["AICLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/async-http-client.git", from: "1.20.0")
    ],
    targets: [
        .executableTarget(
            name: "AICLI",
            dependencies: [
                .product(name: "AsyncHTTPClient", package: "async-http-client")
            ]
        )
    ]
)
