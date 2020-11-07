import UIKit

var array = [String]()

struct DoArray<T> {
    var names = [T]()
    mutating func push(name: T){
        names.append(name)
    }
    mutating func pop() -> T{
        return names.removeFirst()
    }
    
}
var princessNamesList = ["Ariel", "Zhasmin", "Mulan", "Cinderella"]
var arrays = DoArray(names: princessNamesList)
arrays.push(name: "SnowWhite")
arrays.pop()
var filter1 = princessNamesList.flatMap{$0}
type(of: filter1)
print(filter1)

var filter2 = filter1.reduce(into: [:]) {counts, letter in counts[letter, default: 0 ] += 1}
print(filter2)

