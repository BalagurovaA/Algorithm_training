import Foundation

func dogs() {
    let dogQuantity = Int(readLine()!)!
    if dogQuantity == 0 {
        print ("0 0")
        return
    }
    let neckRad = readLine()!.split(separator: " ").map {Int($0)!}
    let dogTagRad = readLine()!.split(separator: " ").map{ Int($0)!}
    
    var dissatisfaction: [Int] = []
    var newDissat: [Int] = []
    
    for i in 0..<dogQuantity {
        if dogTagRad[i] <= neckRad[i] {
            dissatisfaction.append(0)
        }
        else if dogTagRad[i] - neckRad[i] <= 100 {
            dissatisfaction.append(Int((dogTagRad[i] - neckRad[i]) / 2))
        }
        else {
            dissatisfaction.append(30)
        }
    }
    newDissat = dissatisfaction + dissatisfaction
    var curSum = dissatisfaction.reduce(0, +)
    var minSum = curSum
    var startPos = 0
    
    for i in 1..<dogQuantity {
        curSum = curSum - newDissat[i - 1] + newDissat[i + dogQuantity - 1]
        
        if curSum < minSum || (curSum == minSum && i < startPos) {
            minSum = curSum
            startPos = i
        }
    }
    print("\(startPos + 1) \(minSum)")
    
}

dogs()


