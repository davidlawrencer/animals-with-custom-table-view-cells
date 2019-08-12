//
//  AnimalData.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct AnimalData {
    private static let getAnimals  = [Animal(type: "octopus", isOnLand:false ), Animal(type: "elephant", isOnLand:true ), Animal(type: "lion", isOnLand:true ), Animal(type:"monkey", isOnLand: true), Animal(type:"lobster", isOnLand:false ), Animal(type:"sea horse", isOnLand:false ), Animal(type:"dolphin", isOnLand:false ), Animal(type:"dog", isOnLand:true ),  Animal(type:"shark", isOnLand:false ),  Animal(type:"panther", isOnLand: true)]
    
    static let landAnimal = AnimalData.getAnimals.filter({$0.isOnLand})
    static let  seaAnimal = AnimalData.getAnimals.filter({!$0.isOnLand})
}

