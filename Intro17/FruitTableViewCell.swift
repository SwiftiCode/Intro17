//
//  FruitTableViewCell.swift
//  Intro17
//
//  Created by SwiftiCode on 11/8/16.
//  Copyright © 2016 SwiftiCode. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var cellFruitImageView: UIImageView!
    @IBOutlet weak var cellFruitLabel: UILabel!

    
    // MARK: Default Template
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
