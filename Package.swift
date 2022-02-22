// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "HelpScreens",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "HelpScreens",
            targets: ["HelpScreens"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HelpScreens",
            resources: [
                .copy("Resources/html")
            ])
    ]
)
