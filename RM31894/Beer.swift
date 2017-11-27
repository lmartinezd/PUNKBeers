//
//  Beer.swift
//  RM31894
//
//  Created by Luana on 25/11/17.
//  Copyright © 2017 fiap. All rights reserved.
//

import Foundation

class Beer {
    
    var imageURL: String?
    var name: String?
    var abv: Double?
    var tagline: String?
    var ibu: Double?
    var description: String?
    var id: Int?
    
    init(imageURL: String, name: String, abv: Double, tagline: String, ibu: Double, description: String) {
        self.imageURL = imageURL
        self.name = name
        self.abv = abv
        self.tagline = tagline
        self.ibu = ibu
        self.description = description
    }
}


