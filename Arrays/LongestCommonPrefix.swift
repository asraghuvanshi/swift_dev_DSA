class Solution {
func longestCommonPrefix(arr:[String]) -> String {
    var shortestStringCount = arr[0].count 
    var shortestString = arr[0]

    for str in arr {
        if str.count < shortestStringCount {
            shortestString = str
        }
    }
    
    while !shortestString.isEmpty ?? false {
        var hasPrefix : Bool = true
        for str in arr {
            if !str.hasPrefix(shortestString) {
                 hasPrefix = false
                 break
            }
        }
        if hasPrefix {
           return shortestString
        }
        shortestString.removeLast()
    }
    print(shortestString)
     return ""
     }

  func lengthOfCommonPrefix(arr1: [Int], arr2: [Int]) -> Int {
    var maxLength = 0

    for a in arr1 {
        for b in arr2 {
            let strA = Array(String(a))
            let strB = Array(String(b))

            let minLen = min(strA.count, strB.count)
            var currentLength = 0

            for i in 0..<minLen {
                if strA[i] == strB[i] {
                    currentLength += 1
                } else {
                    break
                }
            }

            maxLength = max(maxLength, currentLength)
        }
    }

    return maxLength
}
}


let strArray = ["flower", "flow", "floish"]

let arr1 = [11,111, 1111] 
let arr2 = [11, 12, 20]
let sol = Solution().longestCommonPrefix(arr: strArray)
let sol1 = Solution().lengthOfCommonPrefix(arr1: arr1, arr2:arr2)
print(sol1)
