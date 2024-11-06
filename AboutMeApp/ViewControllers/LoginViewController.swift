

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.name
        passwordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarViewController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let greetingVC = viewController as? GreetingViewController {
                greetingVC.userName = user.name
                greetingVC.personName = user.person.name
            } else if let navigationVC = viewController as? UINavigationController {
                navigationVC.topViewController?.title  = user.person.name
                let personVC = navigationVC.topViewController as? PersonViewController
                personVC?.personName = user.person.name
                personVC?.personSurname = user.person.surname
                personVC?.profession = user.person.profession
                personVC?.personBio = user.person.biography
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.name, passwordTF.text == user.password
            else {
                showAlert(
                    withTitle: "Invalid login or password",
                    andMessage: "Please, enter correct login and password") {
                        self.passwordTF.text = ""
                    }
                return false
        }
          return true
    }
    
    @IBAction func unwindSegueToLoginVC (segue: UIStoryboardSegue){
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.name )")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password )")
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

extension LoginViewController {
    private func showAlert (withTitle title: String, andMessage message: String, completion: (()->Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


