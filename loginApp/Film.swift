//
//  Film.swift
//  loginApp
//
//  Created by Cassia Franco on 01/11/20.
//  Copyright © 2020 Cassia Franco. All rights reserved.
//

import Foundation

class Film {
    
    var name:String
    var imageName:String
    var  isMyFavorite:Bool
    
    init(name:String, imageName:String, isMyFavorite:Bool){
        self.name = name
        self.imageName = imageName
        self.isMyFavorite = isMyFavorite
    }
}
