//
//  ExperienceTableViewCell.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-16.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {


    @IBOutlet weak var experienceImageView: UIImageView!
    @IBOutlet weak var experienceTitleLabe: UILabel!
    @IBOutlet weak var experienceDescriptionLable: UILabel!
 
    
    var experience: Experience?{
        didSet {
            self.updateUI()
            
        }
    }
 
    func updateUI(){
        experienceImageView?.image = experience?.image
        experienceTitleLabe?.text = experience?.title
        experienceDescriptionLable?.text = experience?.description
    }
    
    
}
