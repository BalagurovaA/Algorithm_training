import Foundation

    func palindrome(_ s: String) -> Bool {
        var str = s
        var left = str.startIndex
        var right = str.index(before: str.endIndex)
        
        while left < right {
            while str[left] == " " {
                left = str.index(after: left)
            }
            while str[right] == " " {
                right = str.index(before: right)
            }
            
            if str[left].lowercased() == str[right].lowercased() {
                
                left = str.index(after: left)
                right = str.index(before: right)
            } else {
                 return false
            }
        }
        return true
    }

let s = readLine()!
//let s = "s     s"
//print(s)

if palindrome(s) == true {
    print("It is a palindrome")
} else {
    print("It is not a palindrome")
}
//
