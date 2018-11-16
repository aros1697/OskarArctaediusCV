//
//  ExperienceTableViewController.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-16.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {

    
    var experiences = ExperienceLine.getExperienceLine()[0].experiences
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return experiences.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceCell", for: indexPath) as! ExperienceTableViewCell
        let experience = experiences[indexPath.row]
        cell.experience = experience
        return cell
    }
    
}
