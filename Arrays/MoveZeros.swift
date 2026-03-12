class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var position = 0
        for num in nums {
            if num != 0 {
                nums[position] = num
                position += 1
            }
        }

        while position < nums.count {
            nums[position] = 0
            position += 1
        }

        print(nums)
    }

}

var arr = [1,0,0,0,3,4]
let sol = Solution().moveZeroes(&arr)