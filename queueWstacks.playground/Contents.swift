
import Foundation

class MyQueue {
    // We use two arrays to simulate two stacks.
    private var inputStack: [Int] = []
    private var outputStack: [Int] = []

    /**
     Transfers all elements from inputStack to outputStack.
     This operation reverses the order, achieving the FIFO property.
     It should only be called if outputStack is empty.
     */
    private func transfer() {
        // Implement the transfer logic here:
        // While inputStack is not empty, pop from inputStack and push to outputStack.
        if outputStack.isEmpty {
            while let element = inputStack.popLast() {
                outputStack.append(element)
            }
        }
    }

    /**
     Pushes element x to the back of the queue (FIFO).
     */
    func push(_ x: Int) {
        // Implementation:
        inputStack.append(x)
    }

    /**
     Removes the element from the front of the queue and returns it.
     */
    func pop() -> Int {
        // 1. Ensure the oldest element is ready on the outputStack.
        // If outputStack is empty, call transfer().
        transfer()
        
        // 2. Pop and return the top element from the outputStack.
        // Use forced unwrapping (!) here since we check for emptiness/transfer first.
        return outputStack.popLast()!
        
    }

    /**
     Returns the element at the front of the queue without removing it.
     */
    func peek() -> Int {
        // 1. Ensure the oldest element is ready on the outputStack.
        transfer()
        
        // 2. Return (without popping) the top element from the outputStack.
        return outputStack.last!
        
    }

    /**
     Returns true if the queue is empty, false otherwise.
     */
    func empty() -> Bool {
        // Implementation:
        return inputStack.isEmpty && outputStack.isEmpty
    }
}
