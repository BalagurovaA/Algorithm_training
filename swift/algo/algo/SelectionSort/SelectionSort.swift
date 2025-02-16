import Foundation

//поиск наименьшего элемента массива

func findSmallest( _ arr: [Int]) -> Int {
    var smallest = arr[0]
    var smallestIndex = 0
    for i in 1..<arr.count {
        if arr[i] < smallest {
            smallest = arr[i]
            smallestIndex = i
        }
    }
    return smallestIndex
}

func selectionSort( _ arr: [Int]) -> [Int] {
    var newArr: [Int] = []
    var copyArr = arr
    for i in 0..<copyArr.count {
        let smallestIndex = findSmallest(copyArr)
        newArr.append(copyArr[smallestIndex])  // Добавляем сам элемент, а не индекс
        copyArr.remove(at: smallestIndex)
        
        
    }
    return newArr
}

let arr: [Int] = [1, 2, 89, 4, 0, -4]


//print(findSmallest(arr))
