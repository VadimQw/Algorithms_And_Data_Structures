
public final class DoublyLinkedNode<ValueType> {
    
    // MARK: Public Properties
    
    public let value: ValueType
    public weak var previous: DoublyLinkedNode<ValueType>?
    public var next: DoublyLinkedNode<ValueType>?
    
    
    // MARK: Init
    
    public init(_ value: ValueType,
                previous: DoublyLinkedNode<ValueType>? = nil,
                next: DoublyLinkedNode<ValueType>? = nil) {
        
        self.value = value
        self.previous = previous
        self.next = next
    }
    
}
