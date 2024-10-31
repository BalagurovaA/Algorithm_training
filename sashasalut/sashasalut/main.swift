import Foundation

//закидываю отсортированный массив и нахожу нужный мне индекс для необходимого саше салюта
//func binary_search(myArr: [Int], myTarget: Int) -> Int{
//    var low = 0
//    var high = myArr.count - 1
//    while(low <= high) {
//        let mid = (low + high) / 2;
//        if myArr[mid] == myTarget {
//            return mid
//        } else if myArr[mid] < myTarget {
//            low = mid + 1
//        } else {
//            high = mid - 1
//        }
//   }
//    return -1
//}


////нахожу разность для поиска минимальной
func heightDifference(heights: [Int], quantityNeed: Int, necessaryHeight: Int) -> Int {
    let sortedHeights = heights.sorted()
    
//    let targetIndex = binary_search(myArr: sortedHeights, myTarget: necessaryHeight)

    var minDifference = Int.max

    // Перебираем подмножества из K элементов
    for start in 0...(sortedHeights.count - quantityNeed) {
        let end = start + quantityNeed - 1
        if sortedHeights.contains(where: { $0 == necessaryHeight }) {

            let currentDifference = sortedHeights[end] - sortedHeights[start]
            minDifference = min(minDifference, currentDifference)
        }
    }
    return minDifference
}



func sasha() {
    let input1 = readLine()!
    let components1 = input1.split(separator: " ")
    guard components1.count == 3,
          let quantityInShop = Int(components1[0]),
          let NeedToBuy = Int(components1[1]),
          let NumberNeedSasha = Int(components1[2])
    else {
        print("error")
        return
    }
    
    var heightsArr:[Int] = []
    
    for i in 0 ..< quantityInShop {
        if let heightString = readLine(),
           let height = Int(heightString) {
            heightsArr.append(height)
        } else {
            print("error")
            return
        }
    }
    heightsArr.sort()
    let necessaryHeight = heightsArr[NumberNeedSasha - 1]

    // Находим минимальную разность высот
    let result = heightDifference(heights: heightsArr, quantityNeed: NeedToBuy, necessaryHeight: necessaryHeight)
    
    print(result)
}
sasha()

