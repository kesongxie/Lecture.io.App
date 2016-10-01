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
    
    
    @IBOutlet weak var descirption: UILabel!
    
    @IBAction func cancelConfirmBtnTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func confirmBtnTapped(_ sender: UIButton) {
        confirmCourseRegisteration()
    }
    
    
    var course: Courses?{
        didSet{
            courseName?.text = course!.courseName
            courseTitle?.text = course!.courseTitle
            descirption?.text = course!.description
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if course != nil{
            courseName?.text = course!.courseName
            courseTitle?.text = course!.courseTitle
            descirption?.text = course!.description
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func confirmCourseRegisteration(){
        //add the course code to the user default
        let userDefault = UserDefaults()
        print(userDefault.bool(forKey: isUserHasAddedCoursesKey))
        if !userDefault.bool(forKey: isUserHasAddedCoursesKey){
            userDefault.set(true, forKey: isUserHasAddedCoursesKey)
        }else{
            //userDefault.set(false, forKey: isUserHasAddedCoursesKey)
            if var courseRegisteredCodeList = userDefault.object(forKey: courseRegisteredKey) as? [Int]{
                print(courseRegisteredCodeList)
                
                var found = false
                for courseRegisteredCode in courseRegisteredCodeList{
                    if courseRegisteredCode == course!.courseCode{
                        found = true
                        break
                    }
                }
                if !found{
                    //add courses if not already existed
                    courseRegisteredCodeList.append(course!.courseCode)
                    userDefault.set(courseRegisteredCodeList, forKey: courseRegisteredKey)
                    
                    //send a notification to the registedTableviewController to update the UI
                    let addedCourseNotification = Notification(name: Notification.Name(rawValue: addedCourseNotificationName), object: self, userInfo: nil)
                    NotificationCenter.default.post(addedCourseNotification)
                }
            }else{
                //add new courses if the student has not yet add any courses
                let coursesCodesList = [course!.courseCode]
                userDefault.set(coursesCodesList, forKey: courseRegisteredKey)
                
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
