import Foundation

func findAWord() -> Character {
    let letterCount = Int(readLine()!)!
    let characters = Array(readLine()!)
    let arrSec = readLine()!.split(separator: " ").map {Int($0)!}
    
   var finalLetter: Character = characters[0]
    var maxSec = arrSec[0]
    

    
    for i in 1..<letterCount {
        
        let newSec = arrSec[i] - arrSec[i - 1]
        
        if newSec >= maxSec {
            maxSec = newSec
            finalLetter = characters[i]
        }
        
    }
    
    return finalLetter
}

print(findAWord())

