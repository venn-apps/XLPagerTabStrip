// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "XLPagerTabStrip",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "XLPagerTabStrip", targets: ["XLPagerTabS.gittrip"])
  ],
  dependencies: [],
  targets: [
    .target(
      name: "XLPagerTabStrip",
      dependencies: [
        .package(
          url: "https://github.com/venn-apps/FXPageControl.git",
          .branch("master")
        )
      ],
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
