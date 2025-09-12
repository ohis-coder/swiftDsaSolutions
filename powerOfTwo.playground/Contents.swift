class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        if n == 1 {
            return true
        }
        var num = n
        
        while num % 2 == 0 {
            num = num / 2
        }
        return num == 1
    }
}
