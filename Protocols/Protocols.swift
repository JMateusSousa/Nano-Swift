//
//  Protocols.swift
//  NanoSwift
//
//  Created by Joseph on 26/03/20.
//  Copyright © 2020 Joseph. All rights reserved.
//
import Foundation

/*  No protocolo professor podemos ter todas as características
    que um professor necessita ter.

                    | Properties |

    Name    -> O professor pode mudar de nome (se ele casar);
    ID      -> O ID será o mesmo, uma vez contratado o ID é único;
    campus  -> O professor pode ser alocado para outro campus;
*/
protocol Professor {
    var name: String { get set }
    var ID: Int { get }
    var campus: String { get set }

    func changeCampus(campus: String)
    //var birth: Date { get }
}

protocol CampusDelegate {
    func campusRequestProf(campus: String, area: String)
}

class Campus {
    let campusName: String
    var delegate: CampusDelegate?
    
    init(campus: String) {
        self.campusName = campus
    }
    
    func requestProf(area: String) {
        delegate?.campusRequestProf(campus: campusName, area: area)
        print("\(self.campusName) requer professor da área de \(area)")
    }
}


/*  Na classe IFCEProfessor seguimos o padrão de qualquer professor
    da face da terra (protocolo Professor) */
class IFCEProfessor: Professor, CampusDelegate {
    var name: String
    var ID: Int
    var campus: String
    var area: String
    var campusRelocation: String?
    
    init(name: String, ID: Int, campus: String, area: String) {
        self.name = name
        self.ID = ID
        self.campus = campus
        self.area =  area
    }
    
    func requestRelocation(campus: String) {
        self.campusRelocation = campus
        print("\(self.name) deseja ir para o campus \(campus)")
    }
    
    func campusRequestProf(campus: String, area: String) {
        //  para evitar que o professor seja remanejado para
        //  o atual campus e área dele.
        //  Caso o campus solicite outro professor da mesma área.
        if campus == self.campusRelocation && area == self.area {
            self.changeCampus(campus: campus)
            self.campusRelocation = ""
        }
    }

    func changeCampus(campus: String) {
        self.campus = campus
        print("\(self.name) foi relocado para o campus \(campus)")
    }
}
