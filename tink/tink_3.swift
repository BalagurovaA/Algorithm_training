import Foundation

func planetAttack() ->Int {
    
    var months = Int(readLine()!)!
    let attack = Array(readLine()!)
    
    if attack.isEmpty {return 0}
    
    var popAttcack: [String: Int] = ["A": 0, "B": 0, "C": 0]
    var unpleasent: [String: Int] = ["A": 0, "B": 0, "C": 0]
    
    for i in 0..<attack.count {
        let type = String(attack[i])
        popAttcack[type]! += 1
        
        let maxQuantity = popAttcack.values.max()
        
        for (type, count) in popAttcack {
            if popAttcack[type]! == maxQuantity {
                unpleasent[type]! += 1
            }
            
        }
        
    }
    let maxUnpleasent = unpleasent.values.max()
    return Int(maxUnpleasent!)
}



print(planetAttack())


