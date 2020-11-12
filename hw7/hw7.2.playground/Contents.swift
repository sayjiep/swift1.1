import UIKit

enum DogErrors : Error {
    case hungry
    case sadness
    case restless
}

struct DogError: Error {
    var errorType: DogErrors
    var description: String
    var advice: String
    
    
}
var hungry: Bool = false
var sadness: Bool = false
var restless: Bool = true

func happyDog (_ happy: Bool) throws -> Bool {
    guard hungry == false else {
        throw DogError(errorType: DogErrors.hungry, description: "Собака голодна", advice: "Покормите собаку")
    }
    
    guard sadness == false else {
        throw DogError(errorType: DogErrors.sadness, description: "Собака грустит", advice: "Поиграйте с собакой")
    }
    
    guard restless == false else {
        throw DogError(errorType: DogErrors.restless, description: "Собака беспокойная, возможно, она хочет в туалет", advice: "Выйдите с собакой погулять на улицу")
    }
    return true
}
do {
    let _ = try happyDog(true)
    print("Ваша собака счастлива")
} catch {
    print(error)
}
