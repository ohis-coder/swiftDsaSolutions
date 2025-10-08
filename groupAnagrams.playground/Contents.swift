/* WRONG WRONG WRONGGGGGGGGG NEEDED AI FA THIS 🙈
func groupAnagrams (_ strs: [String]) -> [[String]] {
    var freq: [Character:Int] = [:]
    var groups: [String: [String]] = [:]
    
    for word in strs {
        for char in word {
            freq[char] = (freq[char] ?? 0) + 1
        }
    }
}
*/


class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups: [String: [String]] = [:]

        for currentWord in strs {
            // 1. Calculate the unique signature key:
            let sortedKey = String(currentWord.sorted())

            // 2. The critical step: Safely append the current word.
            // If the sortedKey is not found, default to an empty array ([])
            // and append the currentWord to that array, then save it back.
            groups[sortedKey, default: []].append(currentWord)
        }

        // 3. Return the array of arrays (the values from the dictionary)
        return Array(groups.values)
    }
}
