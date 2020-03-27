//
//  main.swift
//  NanoSwift
//
//  Created by Joseph on 26/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

let playerStruct = PlayerStruct(name: "sdfdsf", age:30, currentTeam: "sdfdsf")
var player2 = playerStruct

player2.name = "Joseph"
player2.currentTeam = "Palmeiras"
let player1 = Player(name: "Mateus", age: 20, currentTeam: "Ceará", weight: 70, height: 1.77)
player1.changecurrentTeam(currentTeam: "Palmeiras")
print(player1.IMC)
print(player2)

