//
//  ModelProduto.swift
//  EscolhaCerta
//
//  Created by Eduardo de Almeida Oliveira on 15/03/22.
//  Copyright © 2022 Eduardo de Almeida Oliveira. All rights reserved.
//

import Foundation

class Produto {
    var tipo: Tipo
    var nome: String
    var unidade: Int
    var preco: Double
    var imagem: String
    init(tipo: Tipo,nome: String, unidade: Int, preco: Double, imagem: String) {
        self.tipo = tipo
        self.nome = nome
        self.unidade = unidade
        self.preco = preco
        self.imagem = imagem
    }
}

enum Tipo: String {
    case bebida
    case alimento
    case custom
}
