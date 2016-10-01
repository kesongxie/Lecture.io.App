//
//  CourseConfirmationViewController.swift
//  sdhacks16-app
//
//  Created by Xie kesong on 10/1/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit

class CourseConfirmationViewController: UIViewController {

    
    @IBOutlet weak var courseName: UILabel!
    
    
    @IBOutlet weak var courseTitle: UILabel!
    
    
    var course: Courses?{
        didSet{
            courseName?.text = course!.courseName
            courseTitle?.text = course!.courseTitle
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if course != nil{
            courseName?.text = course!.courseName
            courseTitle?.text = course!.courseTitle
        }
        // Do any additional setup after loading the view.
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

}
