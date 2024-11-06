//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Anastasya Maximova on 05.11.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personSurnameLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    
    var personName: String!
    var personSurname: String!
    var profession: String!
    var personBio: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        personImage.layer.cornerRadius = personImage.frame.width / 2
        personNameLabel.text = personName
        personSurnameLabel.text = personSurname
        professionLabel.text = profession
        personImage.image = UIImage(named: "PersonPhoto")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioViewController = segue.destination as? BioViewController
        bioViewController?.personBio = personBio
        bioViewController?.personName = personName + " " + personSurname
    }
}
