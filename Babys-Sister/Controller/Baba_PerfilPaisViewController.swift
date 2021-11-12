import UIKit

struct Solictacao {
    let fotoPerfilPais: UIImage?
    let NomePais: String
}

class Baba_PerfilPaisViewController: UIViewController{
    

    @IBOutlet weak var tableView: UITableView!

    let pedido: [Solictacao] = [
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Vitória Santos"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Carla Ferreira"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Laura Campos"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Camila Martins"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Fernanda Rocha"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Denise Carvalho"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Giovanna Assis"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Maria Clara de Ferraz"),
        Solictacao(fotoPerfilPais: UIImage(named: "Vitória Santos"),
            NomePais: "Giulia Camila")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource =  self
    }
    
}

extension Baba_PerfilPaisViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pedido.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustonCellTableViewCell
        
        let chatSolictacao = pedido[indexPath.row]
        
        cell.FotoPerfilChat_C.image = chatSolictacao.fotoPerfilPais
        cell.NomeContrante.text = chatSolictacao.NomePais
        
        return cell
    }

}






