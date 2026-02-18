/** 
*  Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
*  You must write an algorithm with O(log n) runtime complexity.
**/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            }else if nums[mid] < target {
                left =  mid + 1
            } else  {
                right = mid - 1
            }
        }
        return left

    }
}



let nums = [1,3], target = 2
let sol = Solution().searchInsert(nums, target)

print(sol)

