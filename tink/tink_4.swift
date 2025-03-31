func cyberSec() {
    let numb = 5
    var arr = [1, 2, 0, 3, 4]
    
    var freq = Array(repeating: 0, count: numb)
    
    for number in arr {
        if number < numb {
            freq[number] += 1
        }
    }
   
    for x in 0..<numb {
        var add = 0
        for i in 0..<x {
            if freq[i] == 0 {
                add += 1
            }
        }
        
        let del = freq[x]
        
        print(add + del)
    }
}

cyberSec()
