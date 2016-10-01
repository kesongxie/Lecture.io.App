//
//  AppDelegate.swift
//  sdhacks16-app
//
//  Created by Benjamin Nagengast on 9/30/16.
//  Copyright © 2016 sdhacks16. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

    var currentStudent: Student?
    
    var currentCourses = [Courses]()
    
    var studentPid = "A14173938"

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		currentStudent = Student(pid: studentPid, fullname: "Kesong Xie")
        
        // Override point for customization after application launch.
        let course1 = Courses(courseCode: 2200, courseName: "CSE 100", courseTitle: "Advanced Data Structure", mediaUrl: "2200", description: "High-performance data structures and supporting algorithms. Use and implementation of data structures like (un)balanced trees, graphs, priority queues, and hash tables. Also memory management, pointers, recursion. Theoretical and practical performance analysis, both average case and amortized. Uses C++ and STL. Credit not offered for both Math 176 and CSE 100. Equivalent to Math 176. Recommended preparation: background in C or C++ programming.")
        let course2 = Courses(courseCode: 1100, courseName: "CSE 80", courseTitle: "Unix Lab", mediaUrl: "1100", description: "The objective of the course is to help the programmer create a productive UNIX environment. Topics include customizing the shell, file system, shell programming, process management, and UNIX tools.")
        
        let course3 = Courses(courseCode: 3300, courseName: "CSE 125", courseTitle: "Software System Design and Implementation", mediaUrl: "3300", description: "Design and implementation of large, complex software systems involving multiple aspects of CSE curriculum. Emphasis is on software system design applied to a single, large group project with close interaction with instructor")
        
         let course4 = Courses(courseCode: 4400, courseName: "CSE 127", courseTitle: " Introduction to Computer Security ", mediaUrl: "4400", description: "Topics include basic cryptography, security/threat analysis, access control, auditing, security models, distributed systems security, and theory behind common attack and defense techniques. The class will go over formal models as well as the bits and bytes of security ")
        
        
        currentCourses.append(course1)
        currentCourses.append(course2)
        currentCourses.append(course3)
        currentCourses.append(course4)

        
        let question1 = Question(questionId: 1, questionText: "pick a correct conclusion that proves the correctness of MinSort")
        let question2 = Question(questionId: 2, questionText: "How many probes do we make when doing Linear Search on a list of size n")
        
       // currentStudent!.courseRegistered = [course1, course2, course3]
        currentStudent!.questionAnswered = [question1, question2]
        
        
     	return true
	}

	func applicationWillResignActive(_ application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
	}

	func applicationDidEnterBackground(_ application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	}

	func applicationWillEnterForeground(_ application: UIApplication) {
		// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
	}

	func applicationDidBecomeActive(_ application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	}

	func applicationWillTerminate(_ application: UIApplication) {
		// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	}
    
    
    

}

