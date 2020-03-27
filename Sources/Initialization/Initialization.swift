//
//  Initialization.swift
//  NanoSwift
//
//  Created by Joseph on 26/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

//  Início do estudo sobre Initialization
struct Car{
    var speed: Int
    var number: String
    var fuel = "Gasoline"
    init(kmPerHour: Int, number: String) {
        speed = kmPerHour
        self.number = number
    }

    init(mPerSecond: Double, number: String) {
        speed = Int(mPerSecond * 3.6)
        self.number = number
    }
    mutating func toCustomizeFuel(fuel: String){
        self.fuel = fuel
    }
}

func moreFast(Car1: Car, Car2: Car) -> String{
    if Car1.speed > Car2.speed {
        return Car1.number
    }
    else if Car2.speed > Car1.speed {
        return Car2.number
    }
    else{
        return "Nenhum"
    }
}

/*
var myCar = Car(kmPerHour: 60, number: "1")
print(myCar)

var yourCar = Car(mPerSecond: 10, number: "13")
yourCar.toCustomizeFuel(fuel: "Water")
print(yourCar)

print("The Faster car is the number: \(moreFast(Car1: myCar, Car2: yourCar))")

 */

 class Bird{
     var size: Double
     var flightHeight: Int
     var color: String
     var withFeather = true
     required init(size: Double, flightHeight: Int, color: String){
         self.size = size
         self.flightHeight = flightHeight
         self.color = color
     }
 }

 class Chicken: Bird{
    func isFeatherless(){
        self.withFeather = false
    }
 }

/*  var chicken = Chicken(size: 12, flightHeight: 0, color: "White")
 print(chicken.withFeather) */


 class Father{
    var fortune: Double
    private var paramour = ""
    var children: Array<Child>

    init(children: [Child], fortune: Double){
        self.children = children
        self.fortune = fortune
    }
    
    deinit{
        for child in children{
            child.money = fortune / Double(children.count)
        }
    }

    func setNewParamour(paramourName: String){
        self.paramour = paramourName
        hiParamour()
    }

    private func hiParamour(){
        print("Hi \(self.paramour)")
    }


 }

 class Child{
     var name = "Alien"
     var money = 0.0
 }

