//
//  ViewController.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: -- Outlets
    @IBOutlet weak var animalTableView: UITableView!
    
    //MARK: -- Properties
    let landAnimals = AnimalData.landAnimal
    let seaAnimals = AnimalData.seaAnimal
    
    //MARK: -- Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        animalTableView.dataSource = self
        animalTableView.delegate = self
    }
    
    //TODO: TD: Make some private methods
}

extension ViewController: UITableViewDataSource {
    //MARK: -- Data Source Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return landAnimals.count
        case 1:
            return seaAnimals.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalz", for: indexPath) as? AnimalTableViewCell {
                cell.nameLabel?.text = landAnimals[indexPath.row].type
                cell.animalImageView.image = landAnimals[indexPath.row].getImage()
                return cell
            }
        case 1:
            if let cell = animalTableView.dequeueReusableCell(withIdentifier: "seaAnimalz", for: indexPath) as? SeaAnimalTableViewCell {
                cell.seaAnimalLabel?.text = seaAnimals[indexPath.row].type
                cell.seaAnimalImage.image = seaAnimals[indexPath.row].getImage()
                cell.edibleAnimalLabel.text = seaAnimals[indexPath.row].canIEatIt()
                return cell
            }
        default:
            break
        }
        
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Land Animals"
        case 1:
            return "Sea Animals"
        default:
            return "It's something"
        }
    }
}

extension ViewController: UITableViewDelegate {
    //MARK: -- Delegate Methods
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 125
        case 1:
            return 150
        default:
            return 0
        }
    }
}
