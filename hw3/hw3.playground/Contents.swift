import UIKit

enum Mark: String {
    case Honda, Mercedes, Volvo, Nissan, Ford
    }
enum TrunkFull: String {
    case empty, half, full
    }
enum stateEngine {
    case startTheEngine, turnOffTheEngine
    }
enum stateWindow {
    case openWindow, closeWindow
    }
enum stateBack {
    case loadInTheBack, unloadFromTheBack
    }
enum stateTrunk {
    case loadInTheTrunk, unloadFromTheTrunk
    }

struct sportCar {
  
    let mark: Mark
    let year: Double
    let trunkVolume: Double
    let bodyVolume: Double
    let engineStart: Bool
    let openWindow: Bool
    let trunkFull: TrunkFull
    var stateEngine: stateEngine {
        willSet {
                    if newValue == .startTheEngine {
                        print ("\(mark) Двигатель запущен")
                    } else {
                        print ("\(mark) Двигатель выключен")}
                }
    }
        
    var stateWindow: stateWindow {
        willSet {
                    if newValue == .openWindow {
                        print ("\(mark) Окна открыты")
                    } else {
                        print ("\(mark) Окна закрыты")}
                }
    }
        
    var stateBack: stateBack {
        willSet {
                    if newValue == .loadInTheBack {
                        print ("\(mark) Загрузить в кузов")
                    } else {
                        print ("\(mark) Выгрузить из кузова")}
                }
    }
    
}

struct truckCar {
  
    let mark: Mark
    let year: Double
    let trunkVolume: Double
    let bodyVolume: Double
    var engineStart: Bool

    let openWindow: Bool
    var trunkFull: TrunkFull
    var stateEngine: stateEngine {
        willSet {
                    if newValue == .startTheEngine {
                        print ("\(mark) Двигатель запущен")
                    } else {
                        print ("\(mark) Двигатель выключен")}
        }}
    var stateWindow: stateWindow {
        willSet {
                    if newValue == .openWindow {
                        print ("\(mark) Окна открыты")
                    } else {
                        print ("\(mark) Окна закрыты")}
        }}
    var stateTrunk: stateTrunk {
        willSet {
            if newValue == .loadInTheTrunk {
                        print ("\(mark) Загрузить в кузов")
                    } else {
                        print ("\(mark) Выгрузить из кузова")}
                }
    }
    
}
    


var car1 = truckCar(mark: .Ford, year: 4, trunkVolume: 333, bodyVolume: 33, engineStart: false, openWindow: true, trunkFull: .full, stateEngine: .startTheEngine, stateWindow: .closeWindow, stateTrunk: .unloadFromTheTrunk)


car1.stateEngine = .startTheEngine
car1.stateWindow = .closeWindow
car1.stateTrunk = .loadInTheTrunk

print ("Данные автомобиля: Марка \(car1.mark), автомобилю \(car1.year) лет, объем багажника: \(car1.trunkVolume) литров, объем кузова: \(car1.bodyVolume) литров, cостояние двигателя:  \(car1.stateEngine), состояние окон \(car1.stateWindow)")

var car2 = sportCar(mark: .Honda, year: 2, trunkVolume: 30, bodyVolume: 10, engineStart: true, openWindow: false, trunkFull: .empty, stateEngine: .turnOffTheEngine, stateWindow: .openWindow, stateBack: .loadInTheBack)


car2.stateEngine = .turnOffTheEngine
car2.stateWindow = .openWindow
car2.stateBack = .loadInTheBack


print ("Данные автомобиля: Марка \(car2.mark), автомобилю \(car2.year) лет, объем багажника: \(car2.trunkVolume) литров, объем кузова: \(car2.bodyVolume) литров, cостояние двигателя:  \(car2.stateEngine), состояние окон \(car2.stateWindow)")


//Как сделать так, чтобы при принте данные о состоянии двигателя и окон писались на русском, как я прописала чуть выше в willset?





