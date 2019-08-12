//
//  AnimalData.swift
//  animals-with-custom-table-view-cells
//
//  Created by David Rifkin on 8/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct AnimalData {
    private static let getAnimals  = [Animal(type: "octopus", isOnLand:false, isEdible: true), Animal(type: "elephant", isOnLand:true, isEdible: false ), Animal(type: "lion", isOnLand:true, isEdible: false ), Animal(type:"monkey", isOnLand: true, isEdible: false), Animal(type:"lobster", isOnLand:false, isEdible: true ), Animal(type:"sea horse", isOnLand:false, isEdible: false ), Animal(type:"dolphin", isOnLand:false, isEdible: false ), Animal(type:"dog", isOnLand:true, isEdible: false ),  Animal(type:"shark", isOnLand:false, isEdible: true ),  Animal(type:"panther", isOnLand: true, isEdible: false)]
    
    static let landAnimal = AnimalData.getAnimals.filter({$0.isOnLand})
    static let  seaAnimal = AnimalData.getAnimals.filter({!$0.isOnLand})
}

