//
//  ViewController.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-14.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var experienceButton: UIButton!
    @IBOutlet weak var skillsButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2
        self.profileImageView.clipsToBounds = true
        self.experienceButton.layer.cornerRadius = 20
        self.experienceButton.clipsToBounds = true
        self.skillsButton.layer.cornerRadius = 20
        self.skillsButton.clipsToBounds = true
        
    }
}
