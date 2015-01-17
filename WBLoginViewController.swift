//
//  WBLoginViewController.swift
//
//  Created by Howard Wilson on 17/01/2015.
//  Copyright (c) 2015 Howard Wilson. All rights reserved.
//

import UIKit

class WBLoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    class func presentInViewController(viewController: UIViewController) {
        let vc = WBLoginViewController(nibName: "WBLoginViewController", bundle: nil)
        viewController.presentViewController(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func login(sender: AnyObject) {
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
