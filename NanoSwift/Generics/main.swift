//
//  main.swift
//  Generics
//
//  Created by Joseph on 28/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

var a = "jara"
var b = "raca"

print(getRandom(value1: &a, value2: &b))

var c = 15
var d = 13

print(getRandom(value1: &c, value2: &d))

var myQueue = Queue<String>()

myQueue.push("1")
myQueue.push("2")
myQueue.push("3")
myQueue.push("4")

if let first = myQueue.first {
    print("O primeiro da fila é o: \(first)")
}

print(myQueue)
myQueue.pop()
print(myQueue)

if let first = myQueue.first {
    print("O primeiro da fila é o: \(first)")
}

print(theBigger(value1: a, value2: b))


var myQueueCar = Queue1<String>()
var barrierIn = [String]()
var barrierOut = [String]()
for i in 1...5 {
    barrierIn.append(myQueueCar.push(String(i) + String(i + 1)))
}
var v = myQueueCar[1...4]
print(barrierIn)

for _ in 1...5 {
    barrierOut.append(myQueueCar.pop())
}

print(barrierOut)


