import Foundation

func taskType() -> String {
    let input = String(readLine()!)
    let sec = "security"
    let qual = "quality"
    if input.isEmpty { return "NO"}
    return (input == sec) || (input == qual) ? "YES" : "NO"
}

print(taskType())

