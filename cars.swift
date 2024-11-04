import Foundation


func cars() {
    
    //считываю два числа колво машин и любимое число
    let input1 = readLine()!
    let componentsArr = input1.split(separator: " ")
    guard componentsArr.count == 2 else {
        print("error")
        return
    }
    let favourite = componentsArr[0]
    let quantityOfCars = componentsArr[1]
    
    
    
    var arrNumbers = [Int]()
    let input2 = readLine()!
    let carsNumbers = input2.split(separator: " ")
    guard carsNumbers.count == componentsArr.count else {
        print("error")
        return
    }
    for i in 0 ..< carsNumbers.count {
        if let number = Int(carsNumbers[i]) {
            arrNumbers.append(number)
        } else {
            print("error")
            return
        }

    }

}

cars()
