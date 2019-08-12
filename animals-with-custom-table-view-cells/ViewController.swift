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
        let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalz", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = landAnimals[indexPath.row].type
            cell.detailTextLabel?.text = landAnimals[indexPath.row].description
        case 1:
            cell.textLabel?.text = seaAnimals[indexPath.row].type
            cell.detailTextLabel?.text = seaAnimals[indexPath.row].description
        default:
            break
        }

        return cell
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

    override func viewDidLoad() {
        super.viewDidLoad()
        animalTableView.dataSource = self
        animalTableView.delegate = self
    }
}

