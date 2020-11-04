import UIKit

protocol Healthable {
    var health: Int { get set }
    
}
protocol SwordAttack {
    func hit(enemy: inout Healthable)
    var range: Int { get }
    var damage: Int { get }
}
protocol SilverSwordAttack {
    func silverAttack(enemy: inout Healthable)
    var range: Int { get }
    var damage: Int { get }
}
protocol IgniAttack {
    func fire(enemy: inout Healthable)
    var rangeFire: Int { get }
    var damageFire: Int { get }
}
protocol EnemysAttack {
    func attack(enemy: inout Healthable)
    var range: Int { get }
    var damage: Int { get }
}
class Utopian : Healthable, EnemysAttack {
    var health = 200
    var range = 3
    var damage = 10
    func attack(enemy: inout Healthable) {
        enemy.health -= damage
    }
    
}
class Robber : Healthable, EnemysAttack {
   
    
    var health = 350
    var range = 5
    var damage = 40
    func attack(enemy: inout Healthable) {
        enemy.health -= damage
    }
}
class GeraldAttackBeast : Healthable, SilverSwordAttack, IgniAttack {
    var health = 600
    var range = 8
    var damage = 42
    var rangeFire = 3
    var damageFire = 10
    func silverAttack(enemy: inout Healthable) {
        enemy.health -= damage
    }
    func fire(enemy: inout Healthable) {
        enemy.health -= damage
    }
}
class GeraldAttackHuman : Healthable, SwordAttack {
    var health = 600
    var range = 10
    var damage = 44
    func hit(enemy: inout Healthable) {
        enemy.health -= damage
    }
}
var utopian = Utopian () as Healthable
var robber = Robber () as Healthable
var geraldBeast = GeraldAttackBeast() as Healthable
var geraldHuman = GeraldAttackHuman () as Healthable

print(geraldBeast.health)
print(utopian.health)

(geraldBeast as! GeraldAttackBeast).silverAttack(enemy: &utopian)
(geraldBeast as! GeraldAttackBeast).fire(enemy: &utopian)
(utopian as! Utopian).attack(enemy: &geraldBeast)

print(geraldBeast.health)
print(utopian.health)

while utopian.health > 0 {
     [(geraldBeast as! GeraldAttackBeast).silverAttack(enemy: &utopian),
     (geraldBeast as! GeraldAttackBeast).fire(enemy: &utopian),
     (utopian as! Utopian).attack(enemy: &geraldBeast)]
    if utopian.health <= 0  {
    print("Утопец мертв")
    }
}

print(geraldHuman.health)
print(robber.health)

(geraldHuman as! GeraldAttackHuman).hit(enemy: &robber)
(robber as! Robber).attack(enemy: &geraldHuman)

print(geraldHuman.health)
print(robber.health)

while robber.health > 0 {
     [(geraldHuman as! GeraldAttackHuman).hit(enemy: &robber),
      (robber as! Robber).attack(enemy: &geraldHuman)]
    if robber.health <= 0  {
    print("Разбойник мертв")
    }
}



