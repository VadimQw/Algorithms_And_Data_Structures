
public struct SinglyLinkedList<ValueType>: LinkedList {
    
    private typealias Node = SinglyLinkedNode<ValueType>
    
    
    // MARK: Public Properties
    
    public var count: UInt = 0
    
    public var isEmpty: Bool {
        return count.isZero
    }
    
    public var lastIndex: UInt {
        return isEmpty ? count : count.minusOne
    }
    
    
    // MARK: Private Properties
    
    private var head: Node?
    
    private var tail: Node? {
        return searchPreviousNodeAndNode(by: lastIndex).node
    }
    
    
    // MARK: Init
    
    public init(_ values: [ValueType]? = nil) {
        
        if let values = values {
            pushHead(values)
        }
    }
    
    
    // MARK: Public Methods
    
    public mutating func pushHead(_ values: [ValueType]) {
        
        for value in values {
            let newNode = Node(value, next: head)
            head = newNode
            count.inc()
        }
    }
    
    public mutating func pushTail(_ values: [ValueType]) {
        
        if isEmpty {
            pushHead(values.reversed())
        } else {
            var tail = self.tail
            for value in values {
                let newNode = Node(value)
                tail?.next = newNode
                tail = newNode
                count.inc()
            }
        }
    }
    
    public mutating func push(_ values: [ValueType], by index: UInt) throws {
        
        do { try checkIndex(index) } catch {
            throw error
        }
        
        if index == 0 {
            pushHead(values)
        } else {
            var previousNodeAndNode = searchPreviousNodeAndNode(by: index)
            for value in values {
                let newNode = Node(value, next: previousNodeAndNode.node)
                previousNodeAndNode.previous?.next = newNode
                previousNodeAndNode.node = newNode
                count.inc()
            }
        }
    }
    
    public func peekFirst() -> ValueType? {
        return head?.value
    }
    
    public func peekLast() -> ValueType? {
        return tail?.value
    }
    
    public func peek(by index: UInt) throws -> ValueType? {
        
        do { try checkIndex(index) } catch {
            throw error
        }
        
        return searchPreviousNodeAndNode(by: index).node?.value
    }
    
    public mutating func popFirst() -> ValueType? {
        
        let node = head
        head = head?.next
        count.dec()
        return node?.value
    }
    
    public mutating func popLast() -> ValueType? {
        
        let previousNodeAndNode = searchPreviousNodeAndNode(by: lastIndex)
        previousNodeAndNode.previous?.next = nil
        count.dec()
        return previousNodeAndNode.node?.value
    }
    
    public mutating func pop(by index: UInt) throws -> ValueType? {
        
        do { try checkIndex(index) } catch {
            throw error
        }
        
        let previousNodeAndNode = searchPreviousNodeAndNode(by: index)
        previousNodeAndNode.previous?.next = previousNodeAndNode.node?.next
        count.dec()
        return previousNodeAndNode.node?.value
    }
    
    
    // MARK: Private Methods
    
    private func checkIndex(_ index: UInt) throws {
        
        if index > lastIndex {
            throw LinkedListError.invalidIndex(index: index, max: lastIndex)
        }
    }
    
    private func searchPreviousNodeAndNode(by index: UInt) -> (previous: Node?, node: Node?) {
        
        var count: UInt = 0
        var node = head
        var previousNode: Node? = nil
        
        while count < index {
            previousNode = node
            node = node?.next
            count.inc()
        }
        
        return (previousNode, node)
    }
    
}
