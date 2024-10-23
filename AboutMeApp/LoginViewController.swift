

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
   
    let users: [UserData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
    }
    
    
    
    override func shouldPerformSegue(withIdentifier: String, sender: Any?) -> Bool {
        //        users.forEach { user in
        //            guard userNameTF.text == user.name
        //                    passwordTF.text ==  user.password
        //            else {
        //                return false
        //            }
        //
        //
        //        }
          return true
    
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
