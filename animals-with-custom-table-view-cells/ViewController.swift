//
//  ViewController.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var animalTableView: UITableView!
    
    let landAnimals = AnimalData.landAnimal
    let seaAnimals = AnimalData.seaAnimal
    
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
        
        if let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalz", for: indexPath) as? AnimalTableViewCell {
            
            switch indexPath.section {
            case 0:
                cell.nameLabel?.text = landAnimals[indexPath.row].type
                cell.animalImageView.image = landAnimals[indexPath.row].getImage()
            case 1:
                cell.nameLabel?.text = seaAnimals[indexPath.row].type
                cell.animalImageView.image = seaAnimals[indexPath.row].getImage()
            default:
                break
            }
            return cell
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

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalTableView.dataSource = self
        animalTableView.delegate = self
    }
}

