//
//  BenefitsTableViewCell.swift
//  Benefits
//
//  Created by Andrew on 29/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit

class BenefitsTableViewCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var logo: UIImageView!
    @IBOutlet private weak var discountLabel: UILabel!
    @IBOutlet private weak var categoryIcon: UIImageView!
    @IBOutlet private weak var categoryNameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    func update(benefit: Benefit){
        nameLabel.text = benefit.name
        logo.image = benefit.logo
        categoryNameLabel.text = benefit.categoryName
        categoryIcon.image = UIImage(named: Images.category_18pt)
        discountLabel.text = benefit.discount
        descriptionLabel.text = benefit.description
    }
    
    @IBAction private func call(_ sender: Any) {
        print("CALL")
    }
    
    @IBAction private func map(_ sender: Any) {
          print("OPEN MAP")
    }
    
    @IBAction private func web(_ sender: Any) {
          print("OPEN SAFARI")
    }
}
