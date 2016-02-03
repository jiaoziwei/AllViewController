//
//  RegisterViewController.swift
//  AllViewController
//
//  Created by 陈嘉伟 on 16/2/3.
//  Copyright © 2016年 陈嘉伟. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var nametxt: UITextField!
    @IBAction func SaveButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true) { () -> Void in
            let dataDic = NSDictionary(object: self.nametxt.text! , forKey: "username")
            NSNotificationCenter.defaultCenter().postNotificationName("registerCompletionNotification", object: nil, userInfo: dataDic as [NSObject : AnyObject])
        }
        
    }
    @IBAction func CancelButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true) { () -> Void in
            NSLog("关闭模态视图")
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        nametxt.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nametxt.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
