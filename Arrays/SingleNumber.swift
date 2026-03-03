class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        for i in 0..<nums.count {
            var isUnique = true
            
            for j in 0..<nums.count {
                if i != j && nums[i] == nums[j] {
                    isUnique = false
                    break
                }
            }
            
            if isUnique {
                return nums[i]
            }
        }
        return 0
    }
}

