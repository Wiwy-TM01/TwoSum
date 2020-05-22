
// Two Sum

let practiceArray = [1, 4, 10, 16, 7, 3, 3]
let target = 14

func twoSumProblem(_ nums: [Int], target: Int) -> [Int]? {
    
    var startIndex = 0
    var endIndex = nums.count - 1
    
    let sortedNums = nums.sorted()
    
    while startIndex < endIndex {
        
        let sum = sortedNums[startIndex] + sortedNums[endIndex]
        
        if sum == target {
            return [sortedNums[startIndex], sortedNums[endIndex]]
        } else if sum < target {
            startIndex += 1
        } else {
            endIndex -= 1
        }
    }
    
    return nil
}

twoSumProblem(practiceArray, target: target)

// [4, 10]
