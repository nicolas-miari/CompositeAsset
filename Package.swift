// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CompositeAsset",
  platforms: [
    .iOS(.v15),
    .macOS(.v11)
  ],
  products: [
    .library(
      name: "CompositeAsset",
      targets: ["CompositeAsset"]),
  ],
  dependencies: [
    .package(url: "https://github.com/nicolas-miari/Asset.git", from: "2.0.0"),
    .package(url: "https://github.com/nicolas-miari/UniqueIdentifierProvider.git", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "CompositeAsset",
      dependencies: [
        .product(name: "Asset", package: "Asset"),
        .product(name: "UniqueIdentifierProvider", package: "UniqueIdentifierProvider"),
      ]),
    // No test target (package only defines protocols, contains no testable implementation).
  ]
)
