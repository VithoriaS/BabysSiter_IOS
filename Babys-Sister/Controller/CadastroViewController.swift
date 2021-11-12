import UIKit
import Firebase
class CadastroViewController: UIViewController {

    @IBOutlet weak var ConfirmacaoSenha: UITextField!
    @IBOutlet weak var EmailtextField: UITextField!
    @IBOutlet weak var SenhatextField: UITextField!
    
    var auth:Auth?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.auth = Auth.auth()
    }
    @IBAction func Button(_ sender: UIButton) {
        let email:String = self.EmailtextField.text ?? ""
        let senha:String = self.SenhatextField.text ?? ""
        
//        if !EmailtextField.text!.isEmpty &&
//            !SenhatextField.text!.isEmpty {
//            let alert = UIAlertController(title: "Erro",
//                                          message: "Preencha todos os campos!",
//                                          preferredStyle: .alert)
//
//            let action = UIAlertAction(title: "OK", style: .default)
//            alert.addAction(action)
//            present(alert, animated: true, completion: nil)
//            return
//        }
        self.auth?.createUser(withEmail: email, password: senha, completion: { (result, error) in
            
            if error != nil {
                print("Falha ao cadastrar")
            } else {
                print("Sucesso ao cadastrar")
            }
        })
    }

  

}
