
public final class SinglyLinkedNode<ValueType> {
    
    // MARK: Public Properties
    
    let value: ValueType
    var next: SinglyLinkedNode<ValueType>?
    
    
    // MARK: Init
    
    init(_ value: ValueType, next: SinglyLinkedNode<ValueType>? = nil) {
        self.value = value
        self.next = next
    }
    
}
