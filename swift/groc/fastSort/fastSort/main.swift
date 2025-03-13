
import Foundation

func quickSort(_ arr: [Int]) -> [Int] {
    if arr.count < 2 {
        return arr
    } else {
        let pivot = arr[0]
        let less = Array(arr.dropFirst()).filter {$0 < pivot}
        
        let greater = Array(arr.dropFirst()).filter {$0 > pivot}
        return quickSort(less) + Array(arrayLiteral: pivot) + quickSort(greater)
    }
}
var a = [10, 5, 2, 3]

print(quickSort(a))
