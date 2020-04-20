
public struct DoublyLinkedList<ValueType>: LinkedList {
    
    // MARK: Public Properties
    
    public var count: UInt
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    
    // MARK: Private Properties
    
    private var head: DoublyLinkedNode<ValueType>?
    private var tail: DoublyLinkedNode<ValueType>?
    
    
    // MARK: Init
    
    public init(_ values: [ValueType]? = nil) {
        
        count = UInt(values?.count ?? 0)
        
        if let values = values {
            pushHead(values)
        }
    }
    
    
    // MARK: Public Methods
    
    public func pushHead(_ values: [ValueType]) {
    }
    
    public func pushTail(_ values: [ValueType]) {
    }
    
    public func push(_ values: [ValueType], from index: UInt) {
    }
    
    public func peekFirst() -> ValueType? {
        return nil
    }
    
    public func peekLast() -> ValueType? {
        return nil
    }
    
    public func peek(by index: UInt) -> ValueType? {
        return nil
    }
    
    public func popFirst() -> ValueType? {
        return nil
    }
    
    public func popLast() -> ValueType? {
        return nil
    }
    
    public func pop(by index: UInt) -> ValueType? {
        return nil
    }
    
}
