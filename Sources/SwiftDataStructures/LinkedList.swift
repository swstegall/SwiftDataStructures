public class LinkedList<T: Equatable> {
    public var head: Node<T>?

    public func insertAtEnd(data: T) {
        let newNode = Node<T>(data: data)
        if head?.data == nil {
            head = newNode
            return
        }
        var current = head
        while (current?.next != nil) {
            current = current?.next
        }
        current?.next = newNode
    }

    public func insertAtBeginning(data: T) {
        let newNode = Node<T>(data: data)
        newNode.next = head
        head = newNode
    }

    public func deleteFirstInstanceOfValue(value: T) {
        if head == nil {
            return
        }
        if head?.data == value {
            head = head?.next
        }
        var current = head
        while (current?.next != nil && current?.next?.data != value) {
            current = current?.next
        }

        if current?.next != nil {
            current?.next = current?.next?.next
        }
    }

    public func display() {
        var current = head
        while (current != nil) {
            print(current!.data, terminator: "")
            if current?.next != nil {
                print(" -> ", terminator: "")
            } else {
                print()
            }
            current = current?.next
        }
    }

    public func returnAsString() -> String {
        var result = ""
        var current = head
        while (current != nil) {
            result += "\(current!.data)"
            if current?.next != nil {
                result += " -> "
            }
            current = current?.next
        }
        return result
    }
}

