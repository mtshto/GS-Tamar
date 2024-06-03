//
//  Venda.swift
//  Matheus_rm88430_Vitor_rm88415_impar
//
//  Created by Usuário Convidado on 03/06/24.
//

import Foundation

class Venda {
    var especie: String!
    var quantidade: Int
    
    init(especie: String, quantidade: Int) {
        self.especie = especie
        self.quantidade = quantidade
    }
    
    func processarVenda() {
        print("Espécie: \(especie ?? "N/A")")
        print("Quantidade: \(quantidade)")
    }
}


