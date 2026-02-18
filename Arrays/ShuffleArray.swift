class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        print(nums , n)
        var i  = 0 , j = nums.count / 2
        var newArray = [Int]()
        while newArray.count != nums.count {
            newArray.append(nums[i])
            newArray.append(nums[j])
            i += 1
            j += 1
        }
        
        return newArray
    }
}


let arr = [1,2,3,4,5,6,7,8] 
let n = 4
let sol = Solution().shuffle(arr , n)

print(sol)
