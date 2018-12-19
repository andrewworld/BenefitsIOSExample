//
//  BenefitsTableViewCell.swift
//  Benefits
//
//  Created by Andrew on 29/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit

class BenefitsTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var categoryIcon: UIImageView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func call(_ sender: Any) {
        print("CALL")
    }
    
    @IBAction func map(_ sender: Any) {
          print("OPEN MAP")
    }
    
    @IBAction func web(_ sender: Any) {
          print("OPEN SAFARI")
    }
}
