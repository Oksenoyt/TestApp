//
//  DetailsViewController.swift
//  TestApp
//
//  Created by Elenka on 15.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var characterPhoto: UIImageView!
    @IBOutlet weak var textDetails: UILabel!
    
    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterPhoto.image = UIImage(named: character.image)
        textDetails.text = character.name
    }
}
