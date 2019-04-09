// swift-tools-version:5.0

/**
 *  Codextended
 *  Copyright (c) Jack Rostron 2019
 *  Licensed under the MIT license (see LICENSE file)
 */

import PackageDescription

let package = Package(
    name: "GreatExpectations",
    products: [
        .library(
            name: "GreatExpectations",
            targets: ["GreatExpectations"]
        )
    ],
    targets: [
        .target(name: "GreatExpectations"),
        .testTarget(
            name: "GreatExpectationsTests",
            dependencies: ["Codextended"]
        )
    ]
)
