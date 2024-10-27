

import UIKit

final class GreetingViewController: UIViewController {
    var userName: String!
    
    @IBOutlet weak var userNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = "\(userName ?? "")!"
    }
}
