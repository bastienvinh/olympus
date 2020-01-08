//
//  DetailViewController.swift
//  Olympus
//
//  Created by Bastien VINH on 07/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var god: God?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let god = god {
            nameLabel.text = god.name
            imageView.image = god.img
            descriptionLabel.text = god.desc
        }
        
    }
    

    
   

}
