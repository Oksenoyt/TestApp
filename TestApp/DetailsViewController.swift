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
    var link = "http://hp-api.herokuapp.com/images/harry.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        characterPhoto.image = UIImage(named: character.image)
//        textDetails.text = character.name
        fetchImage()
    }
    
    private func fetchImage() {
        guard let url = URL(string: link) else { return }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "нихрена нет ошибок")
                return
            }
            
            print(response)
            
            guard let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self?.characterPhoto.image = image
            }
        }.resume()
    }
    
}
