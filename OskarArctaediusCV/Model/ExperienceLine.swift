//
//  ExperienceLine.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-16.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

class ExperienceLine{
    var name: String
    var experiences: [Experience]
    
    init(named: String, includeExperience: [Experience]){
        name = named
        experiences = includeExperience
    }
    
    class func getExperienceLine() -> [ExperienceLine]{
        return [jobs(),education()]
    }

    private class func jobs() -> ExperienceLine {
        var experiences = [Experience]()
        
        experiences.append(Experience(titled: "Jula", duration: "2011-2014, 2015-*", description: "Head of specific department and closing officer. Furthermore, reclaim handling, recieving customers orderds, warehousing and treasurer.", imageName: "jula"))
        experiences.append(Experience(titled: "DN.EX", duration: "2010-2011", description: "Operetor for printning newspapers and process monitoring.", imageName: "dn"))
        experiences.append(Experience(titled: "Courtsea ltd pty", duration: "2014-2015", description: "Observer for excavators, excavator management, vacuum suction hole, locate power cables also preparing and place pvc pipes.", imageName: "courtsea"))
        
        return ExperienceLine(named: "Jobs", includeExperience: experiences)
    }
    private class func education() -> ExperienceLine{
        var experiences = [Experience]()
        
        experiences.append(Experience(titled: "Jönköping University", duration: "2016-*", description: "Computerscience, softwaredevelopment with mobile platform orientation.", imageName: "ju"))
        experiences.append(Experience(titled: "YTC Gymnasium", duration: "2007-2010", description: "Vocational gymnasium with technical orientation.", imageName: "ytc"))
        
        return ExperienceLine(named: "Education", includeExperience: experiences)
    }
}
