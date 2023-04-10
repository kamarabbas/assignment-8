//
//  ViewController.swift
//  Local Notification
//
//  Created by KAMAR ABBAS SAIYAD  on 30/03/23.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_setnotification(_ sender: Any)
    {
        let setnotification=UNMutableNotificationContent()
        setnotification.title="ios Notification"
        setnotification.subtitle="Local Notification"
        setnotification.body="This is Local Notification using Usernotification framework!"
        setnotification.badge=1
        setnotification.sound=UNNotificationSound.default
        
        let trigger=UNTimeIntervalNotificationTrigger(timeInterval: 12, repeats: false)
        let request=UNNotificationRequest(identifier: "iosNotification", content: setnotification, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
}

