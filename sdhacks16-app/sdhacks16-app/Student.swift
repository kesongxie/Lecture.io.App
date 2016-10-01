//
//  Student.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import Foundation

class Student{
    let pid: String
    let fullname: String
    var courseRegistered: [Courses]?
    var questionAnswered: [Question]?
    init(pid: String, fullname: String){
        self.pid = pid
        self.fullname = fullname
    }
}
