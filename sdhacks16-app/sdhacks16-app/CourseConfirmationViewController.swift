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
        
        confirmCourseRegisteration()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func confirmCourseRegisteration(){
        //add the course code to the user default
        let userDefault = UserDefaults()
        if !userDefault.bool(forKey: isUserHasAddedCoursesKey){
            userDefault.set(true, forKey: isUserHasAddedCoursesKey)
            if var courseRegistered = userDefault.array(forKey: courseRegisteredKey) as? [Int]{
                print(courseRegistered)
                //courseRegistered.append(course!.courseCode)
            }else{
                let coursesCodesList = [course!.courseCode]
//                userDefault.set(coursesCodesList, forKey: courseRegisteredKey)
                
                
                
            }
            
            
            
            
        }else{
            //userDefault.set(false, forKey: isUserHasAddedCoursesKey)
        }
        
        //userDefault.dictionary(forKey: "courseCodeList")
        
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
