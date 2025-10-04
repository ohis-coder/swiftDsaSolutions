import Foundation

class Solution {
    /**
     Determines if the input string s has valid, balanced, and correctly ordered parentheses.
     Uses a Stack and a Hash Map for an O(n) solution.
     */
    func isValid(_ s: String) -> Bool {
        // 1. Define the stack (using a Swift array) to hold only opening brackets.
        var stack: [Character] = []
        
        // 2. Define the Hash Map (Dictionary) for O(1) lookups.
        // It maps the CLOSING bracket to its required OPENING counterpart.
        let mapping: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["
        ]
        
        for char in s {
            // Check if the current character is a CLOSING bracket by checking the mapping dictionary.
            if let requiredOpener = mapping[char] {
                // --- CASE 1: CLOSING BRACKET FOUND (e.g., ')' ) ---
                
                // If the stack is empty, it means we have a closing bracket with no opener.
                // We attempt to pop the last element from the stack.
                guard let topElement = stack.popLast() else {
                    return false
                }
                
                // Check if the element we just popped matches the required opener.
                // If the required opener (from the map) doesn't match the top of the stack, it's invalid.
                if topElement != requiredOpener {
                    return false
                }
                
            } else {
                // --- CASE 2: OPENING BRACKET FOUND (e.g., '(' ) ---
                
                // If it's an opening bracket, push it onto the stack.
                stack.append(char)
            }
        }
        
        // 3. Final Check: If the stack is empty, all brackets were correctly matched.
        // If the stack is NOT empty, it means there are unclosed opening brackets left over.
        return stack.isEmpty
    }
}
