//
//  WBLoginViewController.swift
//
//  Created by Howard Wilson on 17/01/2015.
//  Copyright (c) 2015 Howard Wilson. All rights reserved.
//

import UIKit

@objc protocol WBLoginViewControllerDelegate {
    func authenticate() -> Bool
}

class WBLoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var delegate: WBLoginViewControllerDelegate?
    
    /**
        Creates a WBLoginViewController, uses the given view controller as its delegate if it conforms to WBLoginViewControllerDelegate, and presents it.
    
        :param: viewController The view controller within which to present the login view
    
        :returns: A new WBLoginViewController
    */
    class func presentInViewController(viewController: UIViewController) ->  WBLoginViewController {
        let vc = WBLoginViewController(nibName: "WBLoginViewController", bundle: nil)
        
        // If passed controller conforms to delegate, use it for authentication
        vc.delegate = viewController as? WBLoginViewControllerDelegate
        
        viewController.presentViewController(vc, animated: true, completion: nil)
        
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func login(sender: AnyObject) {
        if (delegate?.authenticate() == true) {
            println("Authenticate successful")
        } else {
            println("Authentication failed")
        }
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
