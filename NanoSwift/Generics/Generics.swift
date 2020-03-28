//
//  Generics.swift
//  Generics
//
//  Created by Joseph on 28/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

//  Generic function que retorna um dos dois parâmetros
//  de forma randômica.
//  OBS.: Os parâmetros precisam ser do mesmo tipo.
func getRandom<Type>(value1: inout Type, value2: inout Type) -> Type{
    return arc4random_uniform(2) == 0 ? value1 : value2
}

//  Struct que representa uma fila. Sendo que essa fila
//  pode ser de vários tipos (Int, String, etc).
struct Queue<Type>{
    var queue = [Type]()
    
    mutating func push(_ last: Type) {
        queue.append(last)
    }
    
    mutating func pop() {
        queue.remove(at: 0)
    }
}

//  Exemplo de extensão de generic type
extension Queue{
    var first: Type? {
        return queue.isEmpty ? nil : queue[0]
    }
}

//  Um exemplo para type constraint.
//  A função retorna o maior parâmetro, lembrando, os parâmetros
//  devem ser do mesmo tipo.
//  OBS.: Se os dois parâmetros tiverem o mesmo grau de "grandesa"
//  a função retornará o primeiro.
func theBigger<Type: Comparable>(value1: Type, value2: Type) -> Type {
    return value1 > value2 ? value1 : value2
}

//  Para herdar um protocolo que se adeque a vários tipos,
//  faz-se necessário o uso de associated type na composição do protocolo,
//  ou seja, o protocolo se adequa ao seu exportador.
protocol Tunnel{
    associatedtype Car
    mutating func append(_ car: Car)
    var count: Int { get }
    subscript(i: Int) -> Car { get }
}

//  Exemplo de Generic subscript
extension Tunnel {
    subscript<Indices: Sequence>(indices: Indices) -> [Car]
        where Indices.Iterator.Element == Int {
            var result = [Car]()
            for index in indices {
                result.append(self[index])
            }
            return result
    }
}

struct Queue1<Type>: Tunnel {
    var cars = [Type]()
    mutating func push(_ car: Type) -> Type{
        cars.append(car)
        return car
    }
    
    mutating func pop() -> Type {
        return cars.remove(at: 0)
    }
    
    mutating func append(_ car: Type) {
        self.push(car)
    }
    
    var count: Int {
        return cars.count
    }
    
    subscript(i: Int) -> Type {
        return cars[i]
    }
}

//  Exemplo de Generic Where Clauses
func isThereCarUtil<C1: Tunnel, C2: Tunnel>
    (_ checkIn: C1, _ checkOut: C2) -> Bool
    where C1.Car == C2.Car, C1.Car: Equatable {

        if checkIn.count != checkOut.count {
            return false
        }

        for i in 0..<checkIn.count {
            if checkIn[i] != checkOut[i] {
                return false
            }
        }
        return true
}
