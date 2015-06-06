//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Programmatic segue code base:

if let destinationVC = self.storyboard?.instantiateViewControllerWithIdentifier("insertIdentifierOnStoryboard") as? DestinationViewController {
    
    self.presentViewController(destinationVC, animated: false, completion: nil)
    
}

}