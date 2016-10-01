//
//  QATableViewCell.swift
//  sdhacks16-app
//
//  Created by Benjamin Nagengast on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit

class QATableViewCell: UITableViewCell {
	
	@IBOutlet weak var answerTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
