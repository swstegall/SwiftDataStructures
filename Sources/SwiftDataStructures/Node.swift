public class Node<T> {
    public var data: T
    public var next: Node<T>?

    public init(data: T) {
        self.data = data
        self.next = nil
    }
}

