//
//  ExperienceTableViewController.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-16.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {

    
    var experienceLines: [ExperienceLine] = ExperienceLine.getExperienceLine()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return experienceLines.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return experienceLines[section].experiences.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceCell", for: indexPath) as! ExperienceTableViewCell
        let experienceLine = experienceLines[indexPath.section]
        let experiences = experienceLine.experiences
        let experience = experiences[indexPath.row]
        cell.experience = experience
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let experienceLine = experienceLines[section]
        return experienceLine.name
    }
}
