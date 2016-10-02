//
//  QAViewController.swift
//  sdhacks16-app
//
//  Created by Benjamin Nagengast on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit
//
//class QAViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//	var tableView = UITableView()
//	var questionIDTemp = UITextField()
//	var sendButton = UIButton()
//	
//	
//    override func viewDidLoad() {
//        super.viewDidLoad()
//		
//		self.tableView.delegate = self
//		
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//		tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//	}
////	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////		
////		
////		switch indexPath.row {
////		case 0:
////			cell.textLabel = "A"
////		case 1:
////			cell.textLabel = "B"
////		case 2:
////			cell.textLabel = "C"
////		case 3:
////			cell.textLabel = "D"
////		}
////		return cell
////	}
////	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////		return 4
////	}
////	func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
////			tableView.cellForRow(at: indexPath)?.accessoryType = .none
////	}
////	
////	func sendButtonPressed() {
////		let selectedCell = self.tableView.cellForRow(at: self.tableView.indexPathForSelectedRow)
////		if let pid = UserDefaults.standard.string(forKey: "pidValue"),
////	 			let questionID = questionIDTemp.text,
////	 			let responseString = selectedCell.text {
////	 			let parameters: Parameters = [
////	 				"pid" : pid,
////	 				"qid" : questionID,
////	 				"response": responseString
////			  ]
////				Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: JSONEncoding.default).response { response in
////	 				print("Request: \(response.request)")
////	 				print("Response: \(response.response)")
////	 				print("Error: \(response.data)")
////	 			}
////	 			return true
////	 		}
////		return false
////	}
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
