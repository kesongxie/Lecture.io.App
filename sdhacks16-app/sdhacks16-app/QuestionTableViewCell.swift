//
//  QuestionTableViewCell.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var lectureNum: UILabel!
    
    @IBOutlet weak var date: UILabel!
    
    var question: Question?{
        didSet{
            descriptionLabel?.text = question!.questionText
            lectureNum?.text = question!.lectureNum
            date.text = question!.date
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
