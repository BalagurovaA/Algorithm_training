import Foundation


func myprefixsum() {
    
    let quantityString = readLine()! //считываю размер массива
    let quantity = Int(quantityString)!
        
    

    let inputArr = readLine()!
    let componentsArr = inputArr.split(separator: " ")
  
    //чекаю кол во введеных элементов
    guard componentsArr.count == quantity else {
        print("error")
        return
    }

    //считываю массив
    var arr = [Int]()
    for component in componentsArr {
       if let number = Int(component) {
            arr.append(number)
        } else {
            print("error")
            return
        }
    }
//работаю с ARR
    var prefixsum = [Int]()
    prefixsum.append(0)
    for i in 1 ..< arr.count + 1 {
        prefixsum.append(prefixsum[i - 1] + arr[i - 1])
    }
    
//    let outputString = prefixsum.dropFirst().map { String($0) }.joined(separator: " ")
//   print(outputString)
}

myprefixsum()

