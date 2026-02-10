import Foundation

class Solution {
    func removeDuplicate(arr: [Int]) {
        for i in arr {
           if !uniqueElement.insert(i).inserted {
               uniqueElement.insert(i)
           }
        }
        print(uniqueElement)
    }

    func removeDuplicate1(arr: [Int]) {
        var uniqueElement = Array<Int>()
        for i in 0..<arr.count {
            var isDuplicate: Bool = false
            for j in 0..<uniqueElement.count {
                if arr[i] == uniqueElement[j] {
                    isDuplicate = true
                    break
                }
            }
            if !isDuplicate {
                uniqueElement.append(arr[i])
            }
        }
        print(uniqueElement)
    }
}

let sol = Solution().removeDuplicate1(arr: [1,4,5,6,1,5])
print(sol)
