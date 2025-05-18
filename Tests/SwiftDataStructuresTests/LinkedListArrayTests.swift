@testable import SwiftDataStructures
import XCTest

final class LinkedListArrayTests: XCTestCase {
    func testPush() {
        let myArray = LinkedListArray<Int>()
        myArray.push(value: 1)
        myArray.push(value: 2)
        myArray.push(value: 3)
        XCTAssertEqual("1 -> 2 -> 3", myArray.list.returnAsString())
    }

    func testSize() {
        let myArray = LinkedListArray<Int>()
        XCTAssertEqual(0, myArray.size())
        myArray.push(value: 1)
        XCTAssertEqual(1, myArray.size())
        myArray.push(value: 2)
        XCTAssertEqual(2, myArray.size())
        myArray.push(value: 3)
        XCTAssertEqual(3, myArray.size())
    }

    func testGet() {
        let myArray = LinkedListArray<Int>()
        myArray.push(value: 1)
        myArray.push(value: 2)
        myArray.push(value: 3)
        XCTAssertEqual(2, try myArray.get(index: 1))
    }

    func testSet() {
        let myArray = LinkedListArray<Int>()
        myArray.push(value: 1)
        myArray.push(value: 2)
        myArray.push(value: 3)
        XCTAssertEqual(2, try myArray.get(index: 1))
        do { try myArray.set(index: 1, value: 4) } catch {}
        XCTAssertEqual(4, try myArray.get(index: 1))
    }
}

