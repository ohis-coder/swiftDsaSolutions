class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var distinct: Set <Int> = []
        for i in nums{
            if distinct.contains(i) {
                return true
            } else {
                distinct.insert(i)
            }
        }
        return false
    }
}
