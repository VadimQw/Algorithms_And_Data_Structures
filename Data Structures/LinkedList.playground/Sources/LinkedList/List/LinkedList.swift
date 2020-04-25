
public protocol LinkedList {
    
    associatedtype ValueType
    
    
    // MARK: Properties
    
    var count: UInt { get }
    var isEmpty: Bool { get }
    var lastIndex: UInt { get }
    
    
    // MARK: Init
    
    init(_ values: [ValueType]?)
    
    
    // MARK: Methods
    
    mutating func pushHead(_ values: [ValueType])
    mutating func pushTail(_ values: [ValueType])
    mutating func push(_ values: [ValueType], by index: UInt) throws
    
    func peekFirst() -> ValueType?
    func peekLast() -> ValueType?
    func peek(by index: UInt) throws -> ValueType?
    
    mutating func popFirst() -> ValueType?
    mutating func popLast() -> ValueType?
    mutating func pop (by index: UInt) throws -> ValueType?
    
}
