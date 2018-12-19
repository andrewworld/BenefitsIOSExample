//
//  Benefit.swift
//  Benefits
//
//  Created by Andrew on 29/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit

class Benefit {
    var name: String
    var logo: UIImage?
    var categoryName: String
    var discount: String
    var description: String
    
    init(name: String, logo: UIImage?, categoryName: String, discount: String, description: String) {
        self.name = name
        self.logo = logo
        self.categoryName = categoryName
        self.discount = discount
        self.description = description
    }
}
