import Foundation
func binarySearchRecursive(_ arr: [Int], _ numb: Int, _ low: Int, _ high: Int) -> Int {
    if low > high {
        return -1
    }
    
    let mid = (low + high) / 2

    if arr.count == 1 && arr[0] == numb {
        return mid
    } else {
        
        var newLow = low
        var newHigh = high
    
        
        if arr[mid] < numb {
            newLow = mid + 1
            return binarySearchRecursive(arr, numb, newLow,  newHigh)
        } else if arr[mid] > numb {
            newHigh = mid - 1
            return binarySearchRecursive(arr, numb, newLow,  newHigh)
        }
        
        return mid
        
    }
}


var arr: [Int] = [2, 5, 7, 10, 61, 80]
var low = 0
var high = arr.count - 1
var numb = 10

print(binarySearchRecursive(arr, numb, low, high))
