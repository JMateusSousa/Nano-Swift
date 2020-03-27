//
//  main.swift
//  Protocols
//
//  Created by Joseph on 27/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//

import Foundation

let mateus = IFCEProfessor(name: "Mateus", ID: 2011243, campus: "Fortaleza", area: "Computação")
print(mateus.campus)
let campusIco = Campus(campus: "Icó")
campusIco.delegate = mateus
mateus.requestRelocation(campus: "Icó")
campusIco.requestProf(area: "Computação")
print(mateus.campus)


