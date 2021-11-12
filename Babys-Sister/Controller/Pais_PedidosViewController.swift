import UIKit

struct Serviços {
    let fotoPerfilBaba: UIImage?
    let NomeBaba: String
}

class Pais_PedidosViewController: UIViewController{
    

    @IBOutlet weak var tableView: UITableView!

    let pedido: [Serviços] = [
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Vitória Santos"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Carla Ferreira"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Laura Campos"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Camila Martins"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Fernanda Rocha"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Denise Carvalho"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Giovanna Assis"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Maria Clara de Ferraz"),
        Serviços(fotoPerfilBaba: UIImage(named: "Vitória Santos"),
            NomeBaba: "Giulia Camila")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource =  self
    }
    
}

extension Pais_PedidosViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pedido.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustonCellTableViewCell
        
        let chatMensagens = pedido[indexPath.row]
        
        cell.FotoPerfilChat_C.image = chatMensagens.fotoPerfilBaba
        cell.NomeContrante.text = chatMensagens.NomeBaba
        
        return cell
    }

}
