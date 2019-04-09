/**
 *  GreatExpectations
 *  Copyright (c) Jack Rostron 2019
 *  Licensed under the MIT license (see LICENSE file)
 */

import XCTest
import GreatExpectations

final class GreatExpectationsTests: XCTestCase {
    func testAssertAfterBlockPassesCorrectly() {
        var testBool = false
        expect { expectation in
            DispatchQueue.main.async {
                testBool = true // Value is set asyncronously
                expectation.fulfill()
            }
        }
        XCTAssertTrue(testBool)
    }
    
    func testTimeoutIsSetCorrectly() {
        expect(limitingTo: 0.1) { expectation in
            expectation.isInverted = true // States expectation isn't fulfilled
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                expectation.fulfill()
            })
        }
    }
    
    func testExpectationNameIsInferredCorrectly() {
        let currentFunction = #function
        expect { expectation in
            XCTAssertEqual(currentFunction, expectation.description)
            expectation.fulfill()
        }
    }
    
    func testExpectationNameCanBeSetCorrectly() {
        let customName = "CustomName"
        expect(customName) { expectation in
            XCTAssertEqual(customName, expectation.description)
            expectation.fulfill()
        }
    }
}
