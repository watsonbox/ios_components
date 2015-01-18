//
//  WBLoginView.swift
//
//  Created by Howard Wilson on 17/01/2015.
//  Copyright (c) 2015 Howard Wilson. All rights reserved.
//

import UIKit

class WBLoginView: UIView {

    @IBOutlet weak var loginButton: UIButton!
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    override func layoutSubviews() {
        loginButton.setTitle(NSLocalizedString("Login", comment: "Login"), forState: UIControlState.Normal)
    }
}
