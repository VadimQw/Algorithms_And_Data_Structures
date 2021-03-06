
let array = [1, 5, 8, 20, 104, 999, 3, 7]
let sum = 111

// answer: 104 + 7 = 111 ([4, 7] || [7, 4])

// -

func findTwoNumbers<T: Hashable & Numeric>(in array: [T], by sum: T) -> [Int] {
    
    var cache = [T: Int]()
    
    for (firstIndex, firstValue) in array.enumerated() {
        if let secondIndex = cache[sum - firstValue] {
            return [firstIndex, secondIndex]
        }
        cache[firstValue] = firstIndex
    }
    
    return []
}

// -

print(findTwoNumbers(in: array, by: sum))
