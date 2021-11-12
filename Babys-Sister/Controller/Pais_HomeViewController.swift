import UIKit
import FirebaseAuth

struct Contratante {
    let FotoBaba: UIImage?
    let NomeBaba: String
    let BioBaba: String
    let idadeBaba: String
}

class Home_PaisViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let home: [Contratante] = [
        Contratante(FotoBaba: UIImage(named: "pessoa1"),
                 NomeBaba: "Ana Clara",
                 BioBaba: "Sempre cuidei dos meus irmãos e adoro criancas!",
                 idadeBaba: "- 25 anos"),
        Contratante(FotoBaba: UIImage(named: "pessoa2"),
                 NomeBaba: "Clara Silva",
                 BioBaba: "Adoro criancas, sou super carinhosa e bondosa. Minha paixão é cuidar dos pequenos",
                 idadeBaba: "- 21 anos"),
        Contratante(FotoBaba: UIImage(named: "Ana Clara"),
                 NomeBaba: "Clara Silva",
                 BioBaba: "Sou movida a cuidar de crianças, adoro elas.",
                 idadeBaba: "- 18 anos"),
        Contratante(FotoBaba: UIImage(named: "pessoa3"),
                 NomeBaba: "Júlia Padua",
                 BioBaba: "Sou de BH já fui professora mas com a pandemia perdi meu emprego.",
                 idadeBaba: "- 25 anos"),
        Contratante(FotoBaba: UIImage(named: "Vitória Santos"),
                 NomeBaba: "Lara Ferraz",
                 BioBaba: "Meu sonho é ter filhos mao crinaças.",
                 idadeBaba: "- 22 anos")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }

}

extension Home_PaisViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return home.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustonCellTableViewCell
        
        let homeContratante = home[indexPath.row]
        
        cell.BabaFotoPerfil_Cont.image = homeContratante.FotoBaba
        cell.BabaNome_Cont.text = homeContratante.NomeBaba
        cell.BabaBio_Cont.text = homeContratante.BioBaba
        cell.BabaIdade_Cont.text = homeContratante.idadeBaba
        
        return cell
    }
}
