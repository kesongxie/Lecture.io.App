//
//  Courses.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import Foundation

class Courses{
    let courseCode: Int
    let courseName: String
    let courseTitle: String
    let mediaUrl: String
    let description: String
    init(courseCode: Int, courseName: String, courseTitle: String, mediaUrl: String, description: String){
        self.courseCode = courseCode
        self.courseName = courseName
        self.courseTitle = courseTitle
        self.mediaUrl = mediaUrl
        self.description = description
    }
}
