
let firstArray      = [1, 1]
let secondArray     = [1, 4, 3, 2, 6]
let therdArray      = [6, 4, 10, 10, 4, 15]

// firstAnswer:     0 ([])
// secondAnswer:    3 ([4, 3, 2])
// therdAnswer:     5 ([6, 4, 10, 10, 4])

// -

func findUnsortedSubarray<T: Comparable>(in array: [T]) -> Int {
    
    let endIndex = array.endIndex - 1
    var subarrayIndexes = (start: 1, end: 0)
    var bounds = (min: array[endIndex], max: array[0])
    
    for (index, value) in array.enumerated() {
        bounds.max = max(bounds.max, value)
        if value < bounds.max { subarrayIndexes.end = index }
    }
    
    for (index, value) in array.reversed().enumerated() {
        bounds.min = min(bounds.min, value)
        if value > bounds.min { subarrayIndexes.start = (endIndex - index) }
    }
    
    return (subarrayIndexes.end - subarrayIndexes.start + 1)
}

// -

print(findUnsortedSubarray(in: firstArray))
print(findUnsortedSubarray(in: secondArray))
print(findUnsortedSubarray(in: therdArray))
