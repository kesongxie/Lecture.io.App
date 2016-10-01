//
//  QAViewController.swift
//  sdhacks16-app
//
//  Created by Benjamin Nagengast on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit
import Alamofire

class QAViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	@IBOutlet weak var questionID: UITextField!
	@IBOutlet weak var sendButton: UIButton!
	@IBOutlet weak var tableView: UITableView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.tableView.delegate = self
		self.tableView.dataSource = self
		//self.tableView.tableFooterView = UIView()
		//self.tableView
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
		self.view.endEditing(true)
	}
	func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
		tableView.cellForRow(at: indexPath)?.accessoryType = .none
		return indexPath
	}
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "QATableViewCell", for: indexPath) as! QATableViewCell
		
		switch indexPath.row {
		case 0:
			cell.answerTextLabel.text = "A"
		case 1:
			cell.answerTextLabel.text = "B"
		case 2:
			cell.answerTextLabel.text = "C"
		case 3:
			cell.answerTextLabel.text = "D"
		case 4:
			cell.answerTextLabel.text = "E"
		default:
			cell.answerTextLabel.text = ""
		}
		return cell
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
	}
	
	func sendButtonPressed() {
		if let indexPath = self.tableView.indexPathForSelectedRow {
			let qid = questionID.text
			let selectedCell = self.tableView.cellForRow(at: indexPath) as! QATableViewCell
			let responseString = selectedCell.answerTextLabel.text
			let pid = UserDefaults.standard.string(forKey: "pidValue")
	 			let parameters: Parameters = [
	 				"pid" : pid,
	 				"qid" : qid,
	 				"response": responseString
			  ]
				Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: JSONEncoding.default).response { response in
	 				print("Request: \(response.request)")
	 				print("Response: \(response.response)")
	 				print("Error: \(response.data)")
	 			}
	 		}
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
