import Foundation
func strings() {
    let str = readLine()!
    var dict: [(Character, Int)] = []
    var curLetter: Character?
    var curNumb = ""
    
    for char in str {
        if char.isLetter {
            if let letter = curLetter, !curNumb.isEmpty {
                dict.append((letter, Int(curNumb)!))
                curNumb = ""
            } else if let letter = curLetter, curNumb.isEmpty  {
                dict.append((letter, 1))
            }
            
            
            curLetter = char
            
  
        } else if char.isNumber {
            curNumb += String(char)
        }
    }
    
    
    if let letter = curLetter, !curNumb.isEmpty {
        dict.append((letter, Int(curNumb)!))
    } else if let letter = curLetter, curNumb.isEmpty  {
        dict.append((letter, 1))
    }
    
    var res = 0
    for i in 0..<dict.count {
        res += dict[i].1
    }
    
    print(res)

}

strings()
