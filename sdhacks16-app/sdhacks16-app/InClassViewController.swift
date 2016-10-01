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
		if let pid = UserDefaults.standard.string(forKey: "pidValue"),
			let questionID = QuestionIDText.text,
			let responseString = responseText.text {
			let parameters: Parameters = [
				"pid" : pid,
				"qid" : questionID,
				"response": responseString
			]
			Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: JSONEncoding.default).response { response in
				print("Request: \(response.request)")
				print("Response: \(response.response)")
				print("Error: \(response.data)")
			}
			return true
		}
		return false
	}
}
