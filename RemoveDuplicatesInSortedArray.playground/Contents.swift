
var array = [0, 0, 1, 1, 3, 4, 4, 4, 5, 5, 8]

// -

private func removeDuplicates<T: Equatable>(in array: inout [T]) -> Int {
    
    var index = 0
    var lastValue: T?
    
    while index < array.count {
        if array[index] == lastValue {
            array.remove(at: index)
        } else {
            lastValue = array[index]
            index += 1
        }
    }
    
    return array.count
}

// -

print(removeDuplicates(in: &array))
print(array)
