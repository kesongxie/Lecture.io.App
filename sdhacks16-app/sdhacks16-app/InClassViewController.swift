//
//  InClassViewController.swift
//  sdhacks16-app
//
//  Created by Benjamin Nagengast on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class InClassViewController: UIViewController, UITextViewDelegate {

	@IBOutlet weak var QuestionIDText: UITextField!
	@IBOutlet weak var responseText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		responseText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
	
	func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
		/* 
		let parameters: [String: AnyObject] = [
			"IdQuiz" : 102,
			"IdUser" : "iosclient",
			"User" : "iosclient",
			"List": [
				[
					"IdQuestion" : 5,
					"IdProposition": 2,
					"Time" : 32
				],
				[
					"IdQuestion" : 4,
					"IdProposition": 3,
					"Time" : 9
				]
			]
		]
		
		Alamofire.request(.POST, "http://myserver.com", parameters: parameters, encoding: .JSON)
			.responseJSON { request, response, JSON, error in
				print(response)
				print(JSON)
				print(error)
		}*/
	  }
}
