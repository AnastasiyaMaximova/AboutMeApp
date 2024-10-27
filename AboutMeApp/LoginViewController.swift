

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
   
    let users = ["User": "Password"]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? GreetingViewController
        else {
            return
        }
        destinationVC.userName = userNameTF.text
    }
    
    @IBAction func unwindSegueToLoginVC (segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(users.keys.first ?? "_")")
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(users.values.first ?? "_")")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        for (user, password) in users {
            guard userNameTF.text == user, passwordTF.text == password
            else {
                showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
                return false
            }
        }
          return true
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

extension LoginViewController {
    private func showAlert (withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


