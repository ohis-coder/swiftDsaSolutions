func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    // var intersect: Set <Int> = []
    let set1 = Set(nums1)
    var set2: Set <Int> = []
    
    for i in nums2{
        if set1.contains(i){
            set2.insert(i)
        }
    }
    return Array(set2)
}



let nums1: [Int] = [1,2,2,1]
let nums2: [Int] = [2,2]

print(intersection(nums1, nums2))
