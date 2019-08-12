//
//  SeaAnimalTableViewCell.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class SeaAnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var seaAnimalImage: UIImageView!
    @IBOutlet weak var seaAnimalLabel: UILabel!
    @IBOutlet weak var edibleAnimalLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //gets called every time isSelected is set.
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
