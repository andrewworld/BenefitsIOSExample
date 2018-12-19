//
//  CategoriesTableViewCell.swift
//  Benefits
//
//  Created by Andrew on 28/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {
    @IBOutlet private weak var icon: UIImageView!
    @IBOutlet private weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func update(category: Category){
        name.text = category.name
        icon.image = UIImage(named: Images.category_24pt)
    }
    
}
