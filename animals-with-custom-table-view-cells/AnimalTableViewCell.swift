//
//  AnimalTableViewCell.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //gets called every time isSelected is set
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
