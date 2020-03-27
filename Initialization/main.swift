//
//  main.swift
//  Initialization
//
//  Created by Joseph on 27/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

var kids = Array<Child>()
for _ in 1...5{
    kids.append(Child())
 }

var father: Father! = Father(children: kids, fortune: 5000)
father.setNewParamour(paramourName: "Ela")

father = nil
for a in 0...4{
    print(kids[a].money)
}


