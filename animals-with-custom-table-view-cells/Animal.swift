//
//  Animal.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Animal {
        let type: String
        let isOnLand: Bool
}

extension Animal: CustomStringConvertible {
    var description: String {
        return "\(type) is a \(isOnLand ? "land" : "sea") animal"
    }
}
