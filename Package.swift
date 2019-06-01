// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "BGRadioServer",
    products: [
        .library(name: "BGRadioServer", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),
        
        // A package to ease the use of multiple storage and CDN services.
        .package(url: "https://github.com/nodes-vapor/storage.git", from: "1.0.0-beta")
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "Vapor", "Storage"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

