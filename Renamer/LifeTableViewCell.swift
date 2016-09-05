//
//  LifeTableViewCell.swift
//  Renamer
//
//  Created by Allison Gallant on 9/4/16.
//  Copyright © 2016 Allison Whilden. All rights reserved.
//

import UIKit

class LifeTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        descriptionLabel.textContainer.lineFragmentPadding = 0
        descriptionLabel.textContainerInset = UIEdgeInsetsZero
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
