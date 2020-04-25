
let firstString     = "hello"
let secondString    = "helio"
let therdString     = "helo"
let fourthString    = "hel"

// firstAnswer:     false ("hello" != "hel" - lo)
// secondAnswer:    true ("hello" == "hello")
// therdAnswer:     true ("hello" != "helio" - i)
// fourthAnswer:    true ("hello" != "helo" - l)

// -

func isOneDifference(firstString: String, secondString: String) -> Bool {
    if firstString.count - secondString.count >= 2 || secondString.count - firstString.count >= 2 {
        return false
    } else if firstString.count == secondString.count {
        return isOneDifferenceForSameLength(firstString: firstString, secondString: secondString)
    } else if firstString.count > secondString.count {
        return isOneDifferenceForDifferentLength(shortString: secondString, longString: firstString)
    } else {
        return isOneDifferenceForDifferentLength(shortString: firstString, longString: secondString)
    }
}

func isOneDifferenceForSameLength(firstString: String, secondString: String) -> Bool {
    
    var differences = 0
    
    for index in 0...(firstString.count - 1) {
        let firstIndex = firstString.index(firstString.startIndex, offsetBy: index)
        let secondIndex = secondString.index(secondString.startIndex, offsetBy: index)
        if firstString[firstIndex] != secondString[secondIndex] {
            differences += 1
            if differences > 1 { return false }
        }
    }
    
    return true
}

func isOneDifferenceForDifferentLength(shortString: String, longString: String) -> Bool {
    
    var index = 0
    var differences = 0
    
    while index < shortString.count {
        let firstIndex = shortString.index(shortString.startIndex, offsetBy: index)
        let secondIndex = longString.index(longString.startIndex, offsetBy: index + differences)
        if shortString[firstIndex] == longString[secondIndex] {
            index += 1
        } else {
            differences += 1
            if differences > 1 { return false }
        }
    }
    
    return true
}

// -

print(isOneDifference(firstString: firstString, secondString: fourthString))
print(isOneDifference(firstString: firstString, secondString: firstString))
print(isOneDifference(firstString: firstString, secondString: secondString))
print(isOneDifference(firstString: firstString, secondString: therdString))
