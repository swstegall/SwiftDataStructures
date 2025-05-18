@testable import SwiftDataStructures
import XCTest

final class NodeTests: XCTestCase {
    func testInit() {
        let myNode = Node<Int>(data: 8)
        print("myNode.data: \(myNode.data)")
        XCTAssertEqual(8, myNode.data)
        print("myNode.next: \(myNode.next)")
        XCTAssertNil(myNode.next)
    }
}

