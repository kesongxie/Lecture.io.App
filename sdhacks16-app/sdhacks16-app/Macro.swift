//
//  Macro.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import Foundation
import UIKit


let isUserHasAddedCoursesKey = "isUserHasAddedCoursesKey"
let courseRegisteredKey = "courseRegisteredKey"

let addedCourseNotificationName = "addedCourseNotificationName"

let QuestionTableViewCellIden = "QuestionTableViewCellIden"


func getCourseFromCourseCode(code: Int) -> Courses?{
    if let currentCourse = (UIApplication.shared.delegate as? AppDelegate)?.currentCourses{
        for course in currentCourse{
            if course.courseCode == code{
                return course
            }
        }
    }
    return nil
}

func getCurrentStudent() -> Student?{
    return (UIApplication.shared.delegate as? AppDelegate)?.currentStudent
}
