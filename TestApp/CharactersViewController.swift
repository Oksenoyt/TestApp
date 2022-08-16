//
//  CharactersViewController.swift
//  TestApp
//
//  Created by Elenka on 15.08.2022.
//

import UIKit

class CharactersViewController: UITableViewController {

    var characterList = Character.getCharacterList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characterList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "character", for: indexPath)
        let character = characterList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = character.name
        content.secondaryText = character.house
//        content.image = UIImage(named: character.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = characterList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: character)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        detailsVC.character = sender as? Character
    }
}
