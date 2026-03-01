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




 DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            let is_verified = UserDefaults.isUserVerified ?? "0"
            let confirmation_status = UserDefaults.userConfirmationStatus ?? "0"
            let profile_completed_status = UserDefaults.userCompletedSteps ?? "0"
            let user_token = UserDefaults.userAuthToken ?? ""
            let user_id = UserDefaults.userId ?? ""
            let resubmitStatus = UserDefaults.documentResubmit ?? "0"
            let profileDeclinedReason = UserDefaults.declineReason ?? "app_profile_rejected".localized
            RemoteMessagesController.shared.syncCurrentFCMTokenWithServer()

            if !user_token.isEmpty && !user_id.isEmpty && (is_verified == "1") && (confirmation_status == "1") && (resubmitStatus == "0") && (profile_completed_status == "3") {
//                RemoteMessagesController.shared.syncCurrentFCMTokenWithServer()
                self.gotoHomeScreen()
                return
            } else if !user_token.isEmpty && !user_id.isEmpty && (is_verified == "1") && ((confirmation_status == "0") || (confirmation_status == "2")) && (resubmitStatus == "0") && (profile_completed_status == "3") {
//                RemoteMessagesController.shared.syncCurrentFCMTokenWithServer()
                self.navigateToProfileReview(message: profileDeclinedReason, approvalStatus: confirmation_status == "0" ? .pending : .rejected, confirmationStatus: confirmation_status)
            } else if !user_token.isEmpty && !user_id.isEmpty && (is_verified == "1") && ((confirmation_status == "0") || (confirmation_status == "1")) && (resubmitStatus == "1") && (profile_completed_status == "3") {
//                RemoteMessagesController.shared.syncCurrentFCMTokenWithServer()
                self.navigationToReuploadDocument()
            } else if !user_token.isEmpty && !user_id.isEmpty && (is_verified == "1") && (confirmation_status == "0") && (resubmitStatus == "0") && (profile_completed_status == "1" || profile_completed_status == "2") {
                let steps = self.determineNextStep(from: profile_completed_status)
                self.navigateToRegistration(startFrom: steps)
            } else {
                self.navigateToRegistration(startFrom: .first)
            }
        }