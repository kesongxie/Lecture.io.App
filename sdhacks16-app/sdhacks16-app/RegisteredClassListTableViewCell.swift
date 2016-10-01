//
//  RegisteredClassListTableViewCell.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit

class RegisteredClassListTableViewCell: UITableViewCell {

    @IBOutlet weak var courseTitle: UILabel!
    
    @IBOutlet weak var courseName: UILabel!
    
   
    
    
    var course: Courses?{
        didSet{
            courseTitle?.text = course?.courseTitle
            courseName?.text = course?.courseName
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
