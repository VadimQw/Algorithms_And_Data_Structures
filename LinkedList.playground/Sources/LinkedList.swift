
public protocol LinkedList {
    
    associatedtype ValueType
    
    
    // MARK: Properties
    
    var count: UInt { get }
    var isEmpty: Bool { get }
    
    
    // MARK: Init
    
    init(_ values: [ValueType]?)
    
    
    // MARK: Methods
    
    func pushHead(_ values: [ValueType])
    func pushTail(_ values: [ValueType])
    func push(_ values: [ValueType], from index: UInt)
    
    func peekFirst() -> ValueType?
    func peekLast() -> ValueType?
    func peek(by index: UInt) -> ValueType?
    
    func popFirst() -> ValueType?
    func popLast() -> ValueType?
    func pop (by index: UInt) -> ValueType?
    
}
