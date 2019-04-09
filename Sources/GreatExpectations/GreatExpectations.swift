/**
 *  GreatExpectations
 *  Copyright (c) Jack Rostron 2019
 *  Licensed under the MIT license (see LICENSE file)
 */

import XCTest

public extension XCTestCase {
    func expect(_ named: String = #function, limitingTo: TimeInterval = 5.0, performing: @escaping ((XCTestExpectation) -> ())) {
        let exp = expectation(description: named)
        performing(exp)
        wait(for: [exp], timeout: limitingTo)
    }
}