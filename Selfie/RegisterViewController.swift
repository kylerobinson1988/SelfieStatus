//
//  RegisterViewController.swift
//  Selfie
//
//  Created by Kyle Brooks Robinson on 6/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit
import Parse
import Bolts

class RegisterViewController: UIViewController {

    var registerObject: [PFObject] = []

    
    @IBOutlet weak var username: PrettyField!
    @IBOutlet weak var emailAddress: PrettyField!
    @IBOutlet weak var password: PrettyField!
    @IBAction func registerButton(sender: AnyObject) {
        
        registerNow()
        
    }
    
    @IBAction func backButton(sender: AnyObject) {
    
        self.navigationController?.popToRootViewControllerAnimated(true)
    
    }
    
    
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardWillChangeFrameNotification, object: nil, queue: NSOperationQueue.mainQueue()) { (notification) -> Void in
            
            self.view.setNeedsUpdateConstraints()
            self.view.setNeedsLayout()
            
            if let kbSize = notification.userInfo?[UIKeyboardFrameEndUserInfoKey]?.CGRectValue().size{
                
                self.bottomConstraint.constant = 20 + kbSize.height
                
            }
            
        }
        
        NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardDidHideNotification, object: nil, queue: NSOperationQueue.mainQueue()) { (notification) -> Void in
            
            self.bottomConstraint.constant = 20
            
        }

    
    }
    
    func registerNow() {
        var user = PFUser()
        user.username = username.text
        user.password = password.text
        user.email = emailAddress.text
        
        user.signUpInBackgroundWithBlock { (succeeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo?["error"] as? NSString
            } else {
                println("Signup complete.")
            }
        }
        
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
