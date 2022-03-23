//
//  Model.swift
//  EscolhaCerta
//
//  Created by Eduardo de Almeida Oliveira on 15/03/22.
//  Copyright © 2022 Eduardo de Almeida Oliveira. All rights reserved.
//

import Foundation


class Model {
    static let instance = Model()
    
    private init(){

    }
    let produtos = [
        Produto(tipo: .bebida, nome: "Cerveja", unidade: 350, preco: 0.00, imagem: "heineken-350ml"),
        Produto(tipo: .bebida, nome: "Cerveja", unidade: 473, preco: 0.00, imagem: "heineken-latao-473ml"),
        Produto(tipo: .bebida, nome: "Cerveja", unidade: 1, preco: 0.00, imagem: "cerveja_heineken_lata_350ml_1045_2_20211014103231")
    ]
    var resultado = Produto(tipo: .bebida, nome: "default", unidade: 0, preco: 0.00, imagem: "resultado")
    
}
