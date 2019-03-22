//
//  Tool.swift
//  BasiCrudIOS
//
//  Created by Miguel Angelo Cecci de Castro Neto on 21/03/19.
//  Copyright © 2019 Miguel Angelo Cecci de Castro Neto. All rights reserved.
//

import Foundation

class Tool {
    
    var id:Int
    var nome:String
    var tipo:String
    var versao:String
    
    init(id:Int, nome:String, tipo:String, versao:String){
        self.id = id
        self.nome = nome
        self.tipo = tipo
        self.versao = versao
    }
    
    func stringfy() -> String {
        return "id: \(self.id), nome: \(self.nome), tipo: \(self.tipo), versao: \(self.versao)"
    }
}
