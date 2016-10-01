//
//  ViewController.swift
//  sdhacks16-app
//
//  Created by Benjamin Nagengast on 9/30/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit

class PIDViewController: UIViewController, UITextFieldDelegate {

	@IBOutlet weak var PIDTextView: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		PIDTextView.delegate = self
		UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: true)
		self.navigationController?.setNavigationBarHidden(true, animated: false)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

// For accessing PID
/* if let savedValue = UserDefaults.standard.string(forKey: "preferenceName") {

}*/
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		let pidValue = textField.text
		UserDefaults.standard.set(pidValue, forKey:"pidValue")
		if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterClassListTableViewController") {
			self.navigationController?.show(nextViewController, sender: self)
		}
		return true
	}


}

