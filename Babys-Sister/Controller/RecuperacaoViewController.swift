import UIKit
import Firebase
class RecuperacoViewController: UIViewController {

    var auth:Auth?
    @IBOutlet weak var EmailTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.auth = Auth.auth()
    }

    @IBAction func Button(_ sender: Any) {
    let email:String = self.EmailTextFiled.text ?? ""
        
    Auth.auth().sendPasswordReset(withEmail: email) { error in
        if error != nil {
            print ("algo deu errado")
        } else {
            print("deu certo")
        }
        }
        
    }
    
}
