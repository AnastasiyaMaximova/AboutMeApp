

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "\(userName ?? "")!"
    }
}

