public enum ArrayErrors: Error {
    case indexOutOfBounds
}

public class LinkedListArray<T: Equatable> {
    internal var list = LinkedList<T>()

    public func push(value: T) {
        list.insertAtEnd(data: value)
    }

    public func size() -> Int {
        var count = 0
        var current = list.head
        while (current != nil) {
            current = current?.next
            count += 1
        }
        return count
    }

    public func get(index: Int) throws -> T {
        var current = list.head
        var count = 0
        while (current != nil) {
            if count == index {
                return current!.data
            }
            count += 1
            current = current?.next
        }
        throw ArrayErrors.indexOutOfBounds
    }

    public func set(index: Int, value: T) throws {
        var current = list.head
        var count = 0
        while (current != nil) {
            if count == index {
                current!.data = value
                return
            }
            count += 1
            current = current?.next
        }
        throw ArrayErrors.indexOutOfBounds
    }
}

