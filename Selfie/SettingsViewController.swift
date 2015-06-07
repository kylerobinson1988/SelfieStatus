//
//  SettingsViewController.swift
//  Selfie
//
//  Created by Kyle Brooks Robinson on 6/7/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var profilePicView: UIImageView!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    @IBAction func profilePicEditButton(sender: AnyObject) {
    }
    @IBAction func saveButton(sender: AnyObject) {
    }
    @IBAction func backButton(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    
    @IBOutlet weak var usernameTextField: PrettyField!
    @IBOutlet weak var emailAddressTextField: PrettyField!
    @IBOutlet weak var passwordTextField: PrettyField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePicView.layer.cornerRadius = 65
        profilePicView.layer.masksToBounds = true

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
