import UIKit

//1
var a = 6.0
if a.remainder(dividingBy: 2) == 0 {
print("Это четное число")
} else {
print("Это нечетное число")
}

//2
var b = 11.0

if b.remainder(dividingBy: 3) == 0.0 {
    print("Деление без остатка")
} else {
    print("Деление с остатком")
}

//3
var numbers = Array (1...100)
print (numbers)

//4 В этом задании я уже полезла гуглить
var numbers2 = Array(1...50)
for element in numbers2 where (element % 2 == 0) || (element % 3 == 0) {
    numbers2.remove(at: (numbers2.firstIndex(of: element)!))
}
print(numbers2)
///
