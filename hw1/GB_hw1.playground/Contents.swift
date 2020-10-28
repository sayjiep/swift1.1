import UIKit

let a: Double = 2
let b: Double = -9
let c: Double = 4
var x1: Double = 0
var x2: Double = 0
var D: Double = 0

D = pow(b,2)-4*a*c

    if (D<0) {
    print ("Корней нет")
    }
    if (D==0) {
    x1 = (-b+sqrt(D))/(2+a)
    print("X1 = X2 = \(x1)")
    }
    if (D>0) {
    x1 = (-b+sqrt(D))/(2*a)
    x2 = (-b-sqrt(D))/(2+a)
    print("X1 = \(x1); X2 = \(x2)")
    }

let cA: Double = 3
let cB: Double = 4
var hipo: Double = 0
var perA: Double = 0
var S: Double = 0
hipo = sqrt(cA*cA+cB*cB)
perA = cA+cB+hipo
var perB = perA/2
S = sqrt(perB*(perB-cA)*(perB-cB)*(perB-hipo))
print ("Гипотенуза равна \(hipo), Периметр равен \(perA), Площадь треугольника равна \(S)")

