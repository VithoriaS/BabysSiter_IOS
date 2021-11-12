//
//  Baba_PedidosViewController.swift
//  Babys-Sister
//
//  Created by Vitória Santos on 11/11/21.
//

import UIKit

import UIKit

struct Mensagens {
    let fotoPerfilBaba: UIImage?
    let NomeBaba: String
}

class Baba_PedidosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let chat: [Mensagens] = [
        Mensagens(fotoPerfilBaba: UIImage(named: "pessoa1"),
            NomeBaba: "Vitória Santos"),
        Mensagens(fotoPerfilBaba: UIImage(named: "pessoa2"),
            NomeBaba: "Carla Ferreira"),
        Mensagens(fotoPerfilBaba: UIImage(named: "pessoa3"),
            NomeBaba: "Laura Campos"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource =  self
    }
    
}

extension Baba_PedidosViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustonCellTableViewCell
        
        let chatMensagens = chat[indexPath.row]
        
        cell.FotoPerfil.image = chatMensagens.fotoPerfilBaba
        cell.LabelNome.text = chatMensagens.NomeBaba
        
        return cell
    }
    
    
}

