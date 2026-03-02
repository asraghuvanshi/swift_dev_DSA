/ *** 
 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Example 1:

Input: haystack = "sadbutsad", needle = "sad"
Output: 0
Explanation: "sad" occurs at index 0 and 6.
The first occurrence is at index 0, so we return 0
 ***/
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {

        if needle.isEmpty { return 0 }
        if haystack.count < needle.count { return -1 } 
        var str1 = Array(haystack)
        var str2 = Array(needle)

        let n = str1.count 
        let m = str2.count

        for i in 0...(n - m) {
            var j = 0 
            while (j < m) && (str1[i + j] == str2[j]) {
                j += 1
            }

            if j == m {
                return i
            }
        }
        return -1
    }
}


let str1 = "sadbutsad", str2 = "sad"

let sol = Solution().strStr(str1 , str2)

print(sol) 



let index =  str1.index(str1.startIndex , offsetBy: 2)

print(str1[index])