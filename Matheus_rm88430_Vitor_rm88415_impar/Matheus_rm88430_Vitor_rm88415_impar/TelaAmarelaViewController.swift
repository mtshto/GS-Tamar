//
//  TelaAmarelaViewController.swift
//  Matheus_rm88430_Vitor_rm88415_impar
//
//  Created by Usuário Convidado on 03/06/24.
//
import UIKit

class TelaAmarelaViewController: UIViewController {

    @IBOutlet weak var escolhaEspecie: UISegmentedControl!
    @IBOutlet weak var txtQuantidade: UITextField!
    @IBOutlet weak var addQtd: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addQtd.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func stepperValueChanged(_ sender: UIStepper) {
        txtQuantidade.text = "\(Int(sender.value))"
    }
    
    @IBAction func concluirCompra(_ sender: Any) {
        guard let quantidadeTexto = txtQuantidade.text,
              let quantidade = Int(quantidadeTexto) else {
            exibirAlerta("Erro", mensagem: "Por favor, insira uma quantidade válida.")
            return
        }
        
        let especie: String
        switch escolhaEspecie.selectedSegmentIndex {
        case 0:
            especie = "Couro"
        case 1:
            especie = "Cabeçuda"
        case 2:
            especie = "Verde"
        case 3:
            especie = "Oliva"
        default:
            exibirAlerta("Erro", mensagem: "Por favor, selecione uma espécie.")
            return
        }
        

        let venda = Venda(especie: especie, quantidade: quantidade)
        venda.processarVenda()
        
        exibirAlerta("Projeto Tamar preservando a vida marinha", mensagem: "Espécie: \(venda.especie!)\nQuantidade: \(venda.quantidade) ")
    }
    
    func exibirAlerta(_ titulo: String, mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Fechar", style: .default, handler: nil))
        present(alerta, animated: true, completion: nil)
    }
}
