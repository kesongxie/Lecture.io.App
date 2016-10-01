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
		if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "AddClassesViewController") {
			self.present(nextViewController, animated: true, completion: nil)
		}
		return true
	}


}

