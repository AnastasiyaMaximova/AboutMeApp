

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    
    var userName: String!
    var personName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        userNameLabel.text = "Welcome,\(userName ?? "")!"
        personNameLabel.text = "My name is \(personName ?? "")"
    }
}


internal let primaryColor = UIColor(
    red: 240/255,
    green:180/255,
    blue: 120/255,
    alpha: 1
)

internal let secondaryColor = UIColor(
    red: 140/255,
    green: 100/255,
    blue: 240/255,
    alpha: 1
)

extension UIView {
    
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

