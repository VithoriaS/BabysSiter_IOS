import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var SenhatextField: UITextField!
    @IBOutlet weak var EmailtextField: UITextField!
    
    var auth: Auth?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.auth = Auth.auth()
    }
    
    @IBAction func Button(_ sender: UIButton) {
        let email:String = self.EmailtextField.text ?? ""
        let senha:String = self.SenhatextField.text ?? ""
        
        self.auth?.signIn(withEmail: email, password: senha, completion: { (usuario, error) in
            if error != nil {
                print("Dados incorretos")
            } else {
                if usuario == nil{
                    print("Tivemos um problema")
                } else{
                    print("cadastro com sucesso")
                }
            }
        })

}

}
