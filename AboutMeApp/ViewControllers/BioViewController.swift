//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Anastasya Maximova on 05.11.2024.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    
    var personBio: String!
    var personName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        bioLabel.text = personBio
        personNameLabel.text = personName
    }
}
