class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var counter: [Character:Int] = [:]

        for char in s {
            counter[char] = (counter[char] ?? 0) + 1
        }
        for letter in t {
            counter[letter] = (counter[letter] ?? 0) - 1
            if counter[letter]! < 0 {
                return false
            }
        }
        return true
    }
}
