//
//  PresentationTableViewCell.swift
//  Olympus
//
//  Created by Bastien VINH on 06/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class PresentationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    
    func setupCell(_ god: God) {
        nameLabel.text = god.name
        descriptionLabel.text = god.desc
        imageview.image = god.img
    }
    
}
