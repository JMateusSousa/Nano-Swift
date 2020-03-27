//
//  ClassTopic.swift
//  NanoSwift
//
//  Created by Joseph on 26/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

//  Início do estudo sobre classe e estruturas
class Player{

  let name: String
  var age: Int
  var currentTeam: String{
    willSet {
      print("\(name) will change to \(newValue)!")
    }
    
  }
  var height, weight: Double
  var IMC: Double{
    get{
      return (weight/(height*height))
    }
  }

  init(name: String, age: Int, currentTeam: String, weight: Double, height: Double){
    self.name = name
    self.age = age
    self.currentTeam = currentTeam
    self.height = height
    self.weight = weight
  }
  
  func setAge(age: Int){
    self.age = age
  }

  func changecurrentTeam(currentTeam: String){
    if currentTeam == self.currentTeam{
      print("The same team!")
    }
    self.currentTeam = currentTeam
  }
}

struct PlayerStruct{
  var name: String, age = 0, currentTeam = ""
}

//  Fim do estudo sobre classe e estruturas
