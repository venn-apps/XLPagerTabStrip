// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "XLPagerTabStrip",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "XLPagerTabStrip", targets: ["XLPagerTabS.gittrip"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/venn-apps/FXPageControl.git",
      .branch("master")
    )
  ],
  targets: [
    .target(
      name: "XLPagerTabStrip",
      dependencies: ["FXPageControl"],
      path: "Sources",
      resources: [.process("Sources/ButtonCell.xib")],
      publicHeadersPath: "XLPagerTabStrip"),
    .testTarget(
      name: "XLPagerTabStripTests",
      dependencies: ["XLPagerTabStrip"],
      path: "Tests",
      exclude: ["Info.plist"])
  ]
)
