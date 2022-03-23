//
    //  ViewController.swift
    //  EscolhaCerta
    //
    //  Created by Eduardo de Almeida Oliveira on 14/03/22.
    //  Copyright © 2022 Eduardo de Almeida Oliveira. All rights reserved.
    //

    import UIKit

    class ViewController: UIViewController {

        @IBOutlet weak var valorTextField1: UITextField!
        
        @IBOutlet weak var valorTextField2: UITextField!

        @IBOutlet weak var imagem1: UIImageView!
        
        @IBOutlet weak var imagem2: UIImageView!
        
        @IBOutlet weak var bebidaTitulo1: UILabel!
        
        @IBOutlet weak var bebidaTitulo2: UILabel!
         
        @IBOutlet weak var botaoCalculaSalva: UIButton!
        let produto = Model.instance.produtos
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
           
          imagem1.image = UIImage(named: produto[0].imagem)
          imagem2.image = UIImage(named: produto[1].imagem)
          bebidaTitulo1.text = "\(produto[0].nome) de \(produto[0].unidade) ml"
          bebidaTitulo2.text = "\(produto[1].nome) de \(produto[1].unidade) ml"
            
            botaoCalculaSalva.layer.cornerRadius =  10
            
        }
        @objc func dismissKeyboard(){
            view.endEditing(true)
        }
        
        func salveUserDefaults(conversao1: Double,conversao2: Double) {
            
        }
        
        @IBAction func buttonCalcular(_ sender: Any) {
                
            
         var conversao1 = ("\(valorTextField1.text!)")
            
            if var conversao1 = Double(valorTextField1.text!) {
                produto[0].preco = conversao1
            } else {
                print("Not a valid number: ")
            }
           
            
            
        var conversao2 = ("\(valorTextField2.text!)")
            
            if var conversao2 = Double(valorTextField2.text!) {
                          produto[1].preco = conversao2
                       } else {
                           print("Not a valid number: ")
                       }
            
            let  conversao11 = produto[0].preco/350
            let conversao22 = produto[1].preco/473
           
                 
                if (conversao11 == conversao22) {
                   print("Tanto Faz")
                    Model.instance.resultado = produto[2]
                                      
                            
                } else if(conversao11 > conversao22) {
                   print("Cerveja 473 ml é a escolha certa! ")
                    Model.instance.resultado = produto[1]
                    
                } else {
                print("Cerveja 350 ml é a escolha certa! ")
                    Model.instance.resultado = produto[0]
                    
                }
        }

    }

extension String {
    var doubleValue: Double {
        return Double((self.replacingOccurrences(of: ",", with: ".") as NSString).doubleValue)
    }
}
