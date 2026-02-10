class Solution {
 
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var sortedData = Array(repeating: 0, count: nums.count)
        var i = 0
        var j = nums.count - 1
        var index = nums.count - 1

        while i <= j {
            let leftSquare = nums[i] * nums[i]
            let rightSquare = nums[j] * nums[j]

            if leftSquare > rightSquare {
                sortedData[index] = leftSquare
                i += 1
            } else {
                sortedData[index] = rightSquare
                j -= 1
            }
            index -= 1
        }
        return sortedData
    }
}



let arr = [-4,-1,0,3,10]

let sol = Solution().sortedSquares(arr) 
print(sol)