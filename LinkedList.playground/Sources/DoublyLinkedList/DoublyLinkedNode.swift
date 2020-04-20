
public final class DoublyLinkedNode<ValueType> {
    
    // MARK: Public Properties
    
    let value: ValueType
    var previous: DoublyLinkedNode<ValueType>?
    var next: DoublyLinkedNode<ValueType>?
    
    
    // MARK: Init
    
    init(_ value: ValueType,
         previous: DoublyLinkedNode<ValueType>? = nil,
         next: DoublyLinkedNode<ValueType>? = nil) {
        
        self.value = value
        self.previous = previous
        self.next = next
    }
    
}
