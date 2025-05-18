@testable import SwiftDataStructures
import XCTest

final class LinkedListTests: XCTestCase {
    func testInsertAtEnd() {
        let myLinkedList = LinkedList<Int>()
        myLinkedList.insertAtEnd(data: 1)
        myLinkedList.insertAtEnd(data: 2)
        myLinkedList.insertAtEnd(data: 3)
        print("myLinkedList.head?.data: \(myLinkedList.head?.data)")
        print("myLinkedList.head?.next?.data: \(myLinkedList.head?.next?.data)")
        print("myLinkedList.head?.next?.next?.data: \(myLinkedList.head?.next?.next?.data)")
        XCTAssertEqual(1, myLinkedList.head?.data)
        XCTAssertEqual(2, myLinkedList.head?.next?.data)
        XCTAssertEqual(3, myLinkedList.head?.next?.next?.data)
    }

    func testInsertAtBeginning() {
        let myLinkedList = LinkedList<Int>()
        myLinkedList.insertAtBeginning(data: 1)
        myLinkedList.insertAtBeginning(data: 2)
        myLinkedList.insertAtBeginning(data: 3)
        print("myLinkedList.head?.data: \(myLinkedList.head?.data)")
        print("myLinkedList.head?.next?.data: \(myLinkedList.head?.next?.data)")
        print("myLinkedList.head?.next?.next?.data: \(myLinkedList.head?.next?.next?.data)")
        XCTAssertEqual(3, myLinkedList.head?.data)
        XCTAssertEqual(2, myLinkedList.head?.next?.data)
        XCTAssertEqual(1, myLinkedList.head?.next?.next?.data)
    }

    func testDeleteFirstInstanceOf() {
        let myLinkedList = LinkedList<Int>()
        myLinkedList.insertAtEnd(data: 1)
        myLinkedList.insertAtEnd(data: 2)
        myLinkedList.insertAtEnd(data: 3)
        myLinkedList.deleteFirstInstanceOfValue(value: 2)
        print("myLinkedList.head?.data: \(myLinkedList.head?.data)")
        print("myLinkedList.head?.next?.data: \(myLinkedList.head?.next?.data)")
        XCTAssertEqual(1, myLinkedList.head?.data)
        XCTAssertNotEqual(2, myLinkedList.head?.next?.data)
        XCTAssertEqual(3, myLinkedList.head?.next?.data)
    }

    func testDisplay() {
        let myLinkedList = LinkedList<Int>()
        myLinkedList.insertAtEnd(data: 1)
        myLinkedList.insertAtEnd(data: 2)
        myLinkedList.insertAtEnd(data: 3)
        myLinkedList.display()
    }

    func testReturnAsString() {
        let myLinkedList = LinkedList<Int>()
        myLinkedList.insertAtEnd(data: 1)
        myLinkedList.insertAtEnd(data: 2)
        myLinkedList.insertAtEnd(data: 3)
        XCTAssertEqual("1 -> 2 -> 3", myLinkedList.returnAsString())
    }
}

