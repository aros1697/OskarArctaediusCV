//
//  SkillsViewController.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-23.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

let callAnimations = imageAnimation()

class SkillsViewController: UIViewController {

    @IBOutlet weak var skillsImageView: UIImageView!
    let startSkillAnimation = callAnimations.getSkillsAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        skillsImageView.animationImages = startSkillAnimation
        skillsImageView.animationDuration = 5.0
        skillsImageView.startAnimating()
    }
}
