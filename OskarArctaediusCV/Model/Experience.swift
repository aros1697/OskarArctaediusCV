//
//  Experience.swift
//  OskarArctaediusCV
//
//  Created by Oskar Arctaedius on 2018-11-16.
//  Copyright © 2018 Oskar Arctaedius. All rights reserved.
//

import UIKit

class Experience {
    var image: UIImage
    var title: String
    var duration: String
    var description: String
    
    init(titled: String, duration:String, description: String,  imageName: String){
        self.title = titled
        self.duration = duration
        self.description = description
        if let image = UIImage(named: imageName){
            self.image = image
        }else{
            self.image = UIImage(named: "default")!
        }
    }
}
