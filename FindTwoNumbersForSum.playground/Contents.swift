
let array = [1, 5, 8, 20, 104, 999, 3, 7]
let target = 111

// -

private func findTwoNumbers<T: Hashable & Numeric>(in array: [T], target: T) -> [Int] {
    
    var answer = [Int]()
    var cache = [T: Int]()
    
    for (firstIndex, firstValue) in array.enumerated() {
        if let secondIndex = cache[target - firstValue] {
            answer = [firstIndex, secondIndex]
            return answer
        }
        cache[firstValue] = firstIndex
    }
    
    return answer
}

// -

print(findTwoNumbers(in: array, target: target))
