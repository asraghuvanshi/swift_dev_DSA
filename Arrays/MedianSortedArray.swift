class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        print(nums1 , nums2)

        var i = 0 , j = 0
        var mergedArray = Array<Int>()

        while i < nums1.count && j < nums2.count {
            if nums1[i] < nums2[j] {
                mergedArray.append(nums1[i])
                i += 1
            } else {
                mergedArray.append(nums2[j])
                j += 1
            }
        }

        while i < nums1.count {
            mergedArray.append(nums1[i])
            i += 1
        }
        
         while j < nums2.count {
            mergedArray.append(nums2[j])
            j += 1
        }

        if mergedArray.count % 2 == 1 {
            return Double(mergedArray[mergedArray.count / 2])
        } else {
            let firstNumber = mergedArray[mergedArray.count / 2 - 1]
            let lastNumber =  mergedArray[mergedArray.count / 2 ]
            return Double(firstNumber + lastNumber) / 2.0
        }
    }
}