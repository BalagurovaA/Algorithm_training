import Foundation

func passw() {
    var subStr = readLine()!
    var str = readLine()!
    var numb = Int(readLine()!)
    
    var count = 0
    
    //    проверка в одной копии
    var countSingleStr = findSubStr(subStr, miniStr)
    
    //    проверка в двух копий
    let doubleMiniStr = miniStr + miniStr
    var countDoubleStr = findSubStr(subStr, doubleMiniStr)
    
    // проверка пересечений двух копий
    var countCrossingStr = countDoubleStr - countSingleStr * 2
    // общее кол-во копий
    var total = countSingleStr * numb + countCrossingStr * (numb - 1)
    
    print(total)
    
}

func findSubStr(_ sub: String, _ str: String) -> Int {
    
    let arrS = Array(str)
    let arrSub = Array(sub)
    
    var count = 0
    
    for i in 0..<(arrS.count - arrSub.count + 1) {
        for j in 0..<sub.count {
            if arrS[i + j] != arrSub[j] {
                break
            }
            if j == arrSub.count - 1 {
                count += 1
            }
        }
    }
    return count
}

print(passw())



