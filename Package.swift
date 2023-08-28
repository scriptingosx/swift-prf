// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-prf",
  products: [
    .executable(name: "prf", targets: ["prf"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
  ],
  targets: [
    .executableTarget(
      name: "prf",
      dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")],
      path: "Sources")
  ]
)
