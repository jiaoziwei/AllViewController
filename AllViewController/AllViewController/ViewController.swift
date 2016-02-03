//
//  ViewController.swift
//  AllViewController
//
//  Created by 陈嘉伟 on 16/2/3.
//  Copyright © 2016年 陈嘉伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "registerCompletion:", name: "registerCompletionNotification", object: nil)
    }
    
    func registerCompletion(notification:NSNotification){
        let theData = notification.userInfo! as NSDictionary
        let userName = theData.objectForKey("username") as! NSString
        print(userName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

