import UIKit

enum
    Mark: String {
    case Honda, Mercedes, Volvo, Nissan, Ford
}

enum
    TrunkFull: String {
    case empty, half, full
}
enum
    Color: String {
    case blue, red, green, orange
}

enum
    Fuel: String {
    case petrol, diesel, gas
}
enum Expensive: String {
    case chip, middle, veryExpensive
}

class Car {
    
    var mark: Mark
    var year: Double
    var speed: Int
    
    init(mark: Mark, year: Double, speed: Int) {
        self.mark = mark
        self.year = year
        self.speed = speed
    }
    
//    func stop (){
//        self.speed = 0
//    }
}

class SportCar: Car {
   

    var color: Color
    var capacityTwoPeople: Bool
    var expensive: Expensive
    
    init(color: Color, capacityTwoPeople: Bool, expensive: Expensive, mark: Mark, year: Double, speed: Int) {
    
        self.color = color
        self.capacityTwoPeople = capacityTwoPeople
        self.expensive = expensive
        super.init(mark: mark, year: year, speed: speed)
        
    
    }
    func stop (){
        self.speed = 0
        print("Автомобиль остановлен")
    }
}

class TruckCar: Car {
    var trunkFull: TrunkFull
    var fuel: Fuel
    
    
    init(trunkFull: TrunkFull, fuel: Fuel, mark: Mark, year: Double, speed: Int) {
        self.trunkFull = trunkFull
        self.fuel = fuel
        super.init(mark: mark, year: year, speed: speed)
    }
    func unload () {
        self.trunkFull = .empty
        print("Разгрузить грузовик")
    }
}

let someCar = TruckCar(trunkFull: .full, fuel: .diesel, mark: .Volvo, year: 4, speed: 100)
print ("Данные автомобиля: Марка \(someCar.mark), автомобилю \(someCar.year) лет, скорость автомобиля: \(someCar.speed) километров, состояние багажника: \(someCar.trunkFull) литров, топливо:  \(someCar.fuel)")
    
print(someCar.trunkFull)
someCar.unload()
print(someCar.trunkFull)


var someCar2 = SportCar(color: .blue, capacityTwoPeople: true, expensive: .veryExpensive, mark: .Honda, year: 2, speed: 300)
print ("Данные автомобиля: Марка \(someCar2.mark), автомобилю \(someCar2.year) лет, скорость автомобиля: \(someCar2.speed) километров, цвет спорткара: \(someCar2.color) литров, вместимость двух пассажиров: \(someCar2.capacityTwoPeople), стоимость:  \(someCar2.expensive)")
print(someCar2.speed)
someCar2.stop()
print(someCar2.speed)
//
