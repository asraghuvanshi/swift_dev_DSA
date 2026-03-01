class Solution {

    // time limit exceed contains runs n times and complexity become n square 
    func containsDuplicate(_ nums: [Int]) -> Bool {
        print(nums)
        var newArr = [Int]()
        for i in nums{
            if newArr.contains(i) {
                return true
            } else {
                newArr.append(i)
            }

        }
        return false
    }

    func containsDuplicates(nums: [Int]) -> Bool {
        let sortedArray = nums.sorted()
        for i in 1..<sortedArray.count {
            if sortedArray[i] == sortedArray[i - 1] {
                return true
            }
        }

        return false
    }
}

let arr = [1,2,3,4,5,6,7,7,8]
let sol = Solution().containsDuplicates(nums:arr)

print(sol)