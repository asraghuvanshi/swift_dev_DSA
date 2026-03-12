class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var first = -1
        var last = -1

        for i in 0..<nums.count {
            if nums[i] == target {
                if first == -1 {
                    first = i
                }
                last = i
            }
        }

        return [first, last]
    }
}


let  nums = [5,7,7,8,8,10], target = 8
let sol = Solution().searchRange(nums, target)
print(sol)

