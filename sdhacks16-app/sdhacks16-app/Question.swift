//
//  Question.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import Foundation

class Question{
    let questionId: Int
    let questionText: String
    let lectureNum: String
    let date: String
    init(questionId: Int, questionText: String, lectureNum: String, date: String){
        self.questionId = questionId
        self.questionText = questionText
        self.lectureNum = lectureNum
        self.date = date
    }


}
