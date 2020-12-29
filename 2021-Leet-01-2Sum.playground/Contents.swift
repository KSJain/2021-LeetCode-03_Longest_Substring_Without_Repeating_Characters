import UIKit


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 1 else { return [-1, -1] }
    
    var directory = [Int: Int]()
    
    for num in nums.enumerated() {
        let counter = target - num.element
        if let otherIndex = directory[counter] {
            return [min(num.offset, otherIndex), max(num.offset, otherIndex)]
        } else {
            directory[num.element] = num.offset
        }
    }
    
    return [-1, -1]
}


//MARK: Test Cases

twoSum([2,7,11,15], 9)
twoSum([3,2,4], 6)
twoSum([3,3], 6)
