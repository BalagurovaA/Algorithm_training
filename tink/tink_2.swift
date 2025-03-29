import Foundation

func stepsCount() -> Int {
    let restQuantity = Int(readLine()!)!
    var points: [(Int, Int)] = []
    
    for _ in 0..<restQuantity {
        guard let input = readLine()?.split(separator: " ").compactMap({ Int($0) }), input.count == 2 else { continue }
        points.append((x: input[0], y: input[1]))
    }
    var maxSteps = 0
    for i in 0..<points.count {
        for j in i+1..<points.count {
            let p1: (x: Int, y: Int) = points[i]
            let p2: (x: Int, y: Int) = points[j]
            
            let X = (p2.x - p1.x) * (p2.x - p1.x)
            let Y = (p2.y - p1.y) * (p2.y - p1.y)
            let curMax = X + Y
   
            maxSteps = max(curMax, maxSteps)
        }
    }
    return maxSteps
}

print(stepsCount())
