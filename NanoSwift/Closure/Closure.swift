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
    
    func checkAge() {
        if flag(self.olderAge, self.age){
            self.changeOlderAge(newAge: self.age)
            nothing{
                print("Agora o mais velho é \(self.name) com \(self.olderAge)")
            }
            anotherNothing(print("Agora o mais velho é \(self.name) com \(self.olderAge)"))
        }
    }
    
    func nothing(closure: () -> Void) {
        closure()
    }
    
    
    // autoclosure example
    func anotherNothing(_ print: @autoclosure () -> Void) {
        print()
    }
    
    func sayHiNewMember() {
        print("Meu nome agora é \(self.name)")
    }
    
    var newName = { (nome: String) -> String in
        return "\(nome) Sousa"}
    
    var flag: (Int, Int) -> Bool = { $0 < $1 }
}

//  * Closure captures values from context
//      - Uma função que recebe um parâmetro e retorna uma closure.
//        O valor do parâmetro será permanente para o espaço de memória
//        que recebeu essa closure.
//
//  * Closure reference type
//      - Se outro espaço de memória receber outro espaço que aponta para
//        uma closure os dois espaços terão a mesma referência.
//
//  * Autoclosure
//      - Apenas uma forma de passar uma closure para uma função na forma
//        sem ter que utilizar chaves. OBS.: Deixa o código mais light!

