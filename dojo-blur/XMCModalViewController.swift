//
//  XMCModalViewController.swift
//  dojo-blur
//
//  Created by David McGraw on 11/3/14.
//  Copyright (c) 2014 xmcdojo. All rights reserved.
//

import UIKit

class XMCModalViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var modalMessage: UILabel!
    
    @IBOutlet weak var subMessage: UILabel!
    
    @IBOutlet weak var closeModal: UIButton!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.modalMessage.alpha = 1.0
        })
        
        UIView.animateWithDuration(1.2, animations: { () -> Void in
            self.subMessage.alpha = 1.0;
        })
    }
}
