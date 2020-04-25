
public extension UInt {
    
    // MARK: Public Properties
    
    var isZero: Bool {
        return self == 0
    }
    
    var plusOne: UInt {
        return self + 1
    }
    
    var minusOne: UInt {
        
        let value: UInt = isZero ? 0 : 1
        return self - value
    }
    
    
    // MARK: Public Methods
    
    mutating func inc() {
        self += 1
    }
    
    mutating func dec() {
        self -= isZero ? 0 : 1
    }
    
}
