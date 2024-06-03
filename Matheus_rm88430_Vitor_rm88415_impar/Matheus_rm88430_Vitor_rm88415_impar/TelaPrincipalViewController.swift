//
//  TelaPrincipalViewController.swift
//  Matheus_rm88430_Vitor_rm88415_impar
//
//  Created by Usuário Convidado on 03/06/24.
//

import UIKit

class TelaPrincipalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func abrirTelaVerde(_ sender: Any) {
        performSegue(withIdentifier: "TelaPrincipalParaTelaVerde", sender: nil)
    }
    
    @IBAction func abrirTelaAmarela(_ sender: Any) {
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
