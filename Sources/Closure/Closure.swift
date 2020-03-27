//
//  Closure.swift
//  NanoSwift
//
//  Created by Joseph on 26/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

class SousaFamily {
    var olderAge = 60
    func changeOlderAge(newAge: Int) {
        self.olderAge = newAge
    }
}

class newMemberSousaFamily: SousaFamily {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = newName(name)
        self.age = age
        super.init()
        self.checkAge()
    }
    
    func checkAge(){
        if flag(self.olderAge, self.age){
            self.changeOlderAge(newAge: self.age)
            nothing{
                print("Agora o mais velho é \(self.name) com \(self.olderAge)")
            }
        }
    }
    
    func nothing(closure: () -> Void){
        closure()
    }
    
    func sayHiNewMember() {
        print("Meu nome agora é \(self.name)")
    }
    
    var newName = { (nome: String) -> String in
        return "\(nome) Sousa"}
    
    var flag: (Int, Int) -> Bool = { $0 < $1 }
}
