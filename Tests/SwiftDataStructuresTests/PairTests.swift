@testable import SwiftDataStructures
import XCTest

final class PairTests: XCTestCase {
    func testInit() {
        let myIntPair = Pair(first: 1, second: 2)
        XCTAssertEqual(1, myIntPair.first)
        XCTAssertEqual(2, myIntPair.second)
        let myStringPair = Pair(first: "asdf", second: "jkl")
        XCTAssertEqual("asdf", myStringPair.first)
        XCTAssertEqual("jkl", myStringPair.second)
        let myMixedPair = Pair(first: 1, second: "asdf")
        XCTAssertEqual(1, myMixedPair.first)
        XCTAssertEqual("asdf", myMixedPair.second)
    }
}

