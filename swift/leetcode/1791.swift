// 1791
// решение медленное
class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {

        var centerSet: Set<Int> = []
        for edge in edges {
            if(centerSet.contains(edge[0])) {
                return edge[0]
            } else {
                centerSet.insert(edge[0])
            }
            if(centerSet.contains(edge[1])) {
                return edge[1]
            } else {
                centerSet.insert(edge[1])
            }
        }
        return -1
    }
}

//решение быстрее

//class Solution {
//    func findCenter(_ edges: [[Int]]) -> Int {
//
//        return edges[1].contains(edges[0][0]) ? edges[0][0] : edges[0][1]
//
//    }
//}
