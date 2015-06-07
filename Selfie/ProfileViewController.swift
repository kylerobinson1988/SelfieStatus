//
//  ViewController.swift
//  Selfie
//
//  Created by Kyle Brooks Robinson on 6/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profilePictureView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePictureView.layer.cornerRadius = 65
        profilePictureView.layer.masksToBounds = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

