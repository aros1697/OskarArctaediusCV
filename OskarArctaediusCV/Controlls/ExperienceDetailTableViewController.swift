//
//  ExperienceDetailTableViewController.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-22.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

class ExperienceDetailTableViewController: UITableViewController {

    @IBOutlet weak var experienceImageView: UIImageView!
    @IBOutlet weak var experienceTitleView: UILabel!
    @IBOutlet weak var experienceDurationView: UILabel!
    @IBOutlet weak var experienceDescriptionView: UILabel!
    
    var experience: Experience?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Experience"
        experienceImageView.image = experience?.image
        experienceTitleView.text = experience?.title
        experienceDurationView.text = experience?.duration
        experienceDescriptionView.text = experience?.description
    }
    
}
