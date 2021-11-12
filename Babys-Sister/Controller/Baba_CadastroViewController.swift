import UIKit
import FirebaseDatabase
import FirebaseAuth


class Baba_CadastroViewController: UIViewController {

    var ref: DatabaseReference!
    
    @IBOutlet weak var HoraTextFlid: UITextField!
    @IBOutlet weak var ConfortavelTextFlid: UITextField!
    @IBOutlet weak var HabilidadesTextFlid: UITextField!
    @IBOutlet weak var TempoTextFlid: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
    }
    
    

    @IBAction func Button(_ sender: Any) {
        //self.ref.child("Baba").child(user.uid).setValue(["descricao": HoraTextFlid])
        let hora = self.HoraTextFlid.text ?? ""
        let confortavel = self.ConfortavelTextFlid.text ?? ""
        let habilidades = self.HabilidadesTextFlid.text ?? ""
        let tempo = self.TempoTextFlid.text ?? ""
    }
    

}
