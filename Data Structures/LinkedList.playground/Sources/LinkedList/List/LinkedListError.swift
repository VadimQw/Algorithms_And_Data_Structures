
import Foundation

public enum LinkedListError: Error {
    
    case invalidIndex(index: UInt, max: UInt)
    
}


// MARK: - LocalizedError
extension LinkedListError: LocalizedError {
    
    public var errorDescription: String? {
        
        switch self {
            
        case .invalidIndex(let index, let max):
            return "Invalid index - \(index)! The index can take values from 0 to \(max)."
        }
    }
    
}
