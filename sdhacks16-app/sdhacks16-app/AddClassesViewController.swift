//
//  AddClassesViewController.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 9/30/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit

class AddClassesViewController: UIViewController {

    @IBOutlet weak var codeTextField: UITextField!
    
    
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let courseCodeEntered = Int(codeTextField.text!)
        if let courseConfirmVC = segue.destination as? CourseConfirmationViewController{
            if let courseAvailable = (UIApplication.shared.delegate as? AppDelegate)?.currentCourses{
                var selectedCourse: Courses?
                for course in courseAvailable{
                    if course.courseCode == courseCodeEntered{
                        selectedCourse = course
                        break
                    }
                }
                courseConfirmVC.course = selectedCourse
            }
        }
    }
 

}
