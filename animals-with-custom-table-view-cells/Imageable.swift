//
//  Imageable.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation
import UIKit

protocol Imageable {
    var imageName: String {get}
    func getImage() -> UIImage
}
