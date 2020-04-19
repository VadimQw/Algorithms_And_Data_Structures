
var firstString: [Character]    = ["n", "e", "x", "t"]
var secondString: [Character]   = ["h", "o", "u", "s", "e"]
var therdString: [Character]    = ["s", "o", "m", "e", " ", "1", "2", "3"]

// firstAnswer:     ["t", "x", "e", "n"]
// secondAnswer:    ["e", "s", "u", "o", "h"]
// therdAnswer:     ["3", "2", "1", " ", "e", "m", "o", "s"]

// -

func reverseArray<T>(_ array: inout [T]) {
    
    let endIndex = array.endIndex - 1
    let bound = Int(endIndex / 2)
    
    for index in 0...bound {
        let reversedIndex = endIndex - index
        (array[index], array[reversedIndex]) = (array[reversedIndex], array[index])
    }
}

// -

reverseArray(&firstString)
reverseArray(&secondString)
reverseArray(&therdString)

print(firstString)
print(secondString)
print(therdString)
