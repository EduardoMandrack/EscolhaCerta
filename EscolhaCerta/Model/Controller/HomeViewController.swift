//
//  HomeViewController.swift
//  EscolhaCerta
//
//  Created by Eduardo de Almeida Oliveira on 22/03/22.
//  Copyright © 2022 Eduardo de Almeida Oliveira. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var buttonBebida: UIButton!
    @IBOutlet weak var buttonAlimentos: UIButton!
    @IBOutlet weak var buttonCustom: UIButton!
    
    func updateButtons(button: UIButton){
        button.layer.cornerRadius = 10
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButtons(button: buttonBebida)
         updateButtons(button: buttonAlimentos)
        updateButtons(button: buttonCustom)
        
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
