class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var charSet: Set<Character> = []
        var left = 0
        var maxLength = 0

        for right in 0..<chars.count {
            let rightChar = chars[right]

            while charSet.contains(rightChar) {

                charSet.remove(chars[left])
                left += 1
            }
            
            charSet.insert(rightChar)
            maxLength = max(maxLength, right - left + 1)
        }
        return maxLength
    }
}
