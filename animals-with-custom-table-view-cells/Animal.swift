//
//  Animal.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation
import UIKit

struct Animal {
    let type: String
    let isOnLand: Bool
    let isEdible:Bool
    func canIEatIt() -> String {
        return isEdible ? "\(type) is yum yum" : "\(type) is not yum yum"
    }
}

extension Animal: CustomStringConvertible {
    var description: String {
        return "\(type) is a \(isOnLand ? "land" : "sea") animal"
    }
}

extension Animal: Imageable {
    var imageName: String {return type.replacingOccurrences(of: " ", with: "")}
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }    
}
