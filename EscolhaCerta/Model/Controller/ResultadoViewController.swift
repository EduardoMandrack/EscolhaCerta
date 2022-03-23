//
//  ResultadoViewController.swift
//  EscolhaCerta
//
//  Created by Eduardo de Almeida Oliveira on 16/03/22.
//  Copyright © 2022 Eduardo de Almeida Oliveira. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var imagemResultado: UIImageView!
    
    @IBOutlet weak var tituloResultado: UILabel!
    
    @IBOutlet weak var precoResultado: UILabel!
    
    let produto = Model.instance.resultado
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //populando as informaçoes
        imagemResultado.image =  UIImage(named: produto.imagem)
        tituloResultado.text = "\(produto.nome) de \(produto.unidade) ml"
        precoResultado.text = "R$ \(produto.preco)"
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
