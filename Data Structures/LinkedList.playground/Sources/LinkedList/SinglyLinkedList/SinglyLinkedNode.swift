
public final class SinglyLinkedNode<ValueType> {
    
    // MARK: Public Properties
    
    public let value: ValueType
    public var next: SinglyLinkedNode<ValueType>?
    
    
    // MARK: Init
    
    public init(_ value: ValueType,
                next: SinglyLinkedNode<ValueType>? = nil) {
        
        self.value = value
        self.next = next
    }
    
}
