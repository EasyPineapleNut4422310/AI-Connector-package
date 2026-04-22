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
        // Example HTTP client (commonly used in real projects)
        .package(url: "https://github.com/swift-server/async-http-client.git", from: "1.20.0")
    ],
    targets: [
        .executableTarget(
            name: "AICLI",
            dependencies: [
                .product(name: "AsyncHTTPClient", package: "async-http-client")
            ],
            path: "Sources/AICLI"
        )
    ]
)
