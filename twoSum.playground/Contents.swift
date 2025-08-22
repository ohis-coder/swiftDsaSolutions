class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var idx: [Int:Int] = [:]
        for (index, number) in nums.enumerated() {
            let complement = target - number
            if let complementIdx = idx[complement] {
                return [complementIdx, index]
            }
            idx[number] = index
        }
        return []
    }
}
