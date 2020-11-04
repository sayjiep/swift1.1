import UIKit

protocol Car: AnyObject {
    
    var stateWindow: Bool {get set}
    var isEngineOn : Bool {get set}
}

extension Car {
    func openWindow(){
        self.stateWindow.toggle()}
    func handleEngine (){
            self.isEngineOn.toggle()
        }
    
}

class SportCar : Car {
    var stateWindow: Bool = false
    var isEngineOn: Bool = true
    
}
extension SportCar : CustomStringConvertible {
    var description: String {
        return "Состояние окон у авто = \(stateWindow), состояние двигателя = \(isEngineOn)"
    }
}


var someCar = SportCar ()
print(someCar)
someCar.openWindow()
print(someCar)
someCar.handleEngine()
print(someCar)



