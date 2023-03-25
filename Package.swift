// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
        name: "swift-99-problems",
        products: [
            // Products define the executables and libraries a package produces, and make them visible to other packages.
            .library(
                    name: "swift-99-problems",
                    targets: ["List","Numbers","Logic"]), //ListPrecondition is not published, as its only used for tests
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            // .package(url: /* package url */, from: "1.0.0"),
        ],
        targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .target(
                    name: "List",
                    dependencies: []) ,
            .target(
                    name: "Numbers",
                    dependencies: ["List"]),
            .target(
                    name: "Logic",
                    dependencies: []),
            .testTarget(
                    name: "ListTests",
                    dependencies: ["List"]
            ),
            .testTarget(
                    name: "NumbersTests",
                    dependencies: ["Numbers"]
            ),
            .testTarget(
                    name: "LogicTests",
                    dependencies: ["Logic"]
            ),
        ]
)
