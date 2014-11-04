//
//  XMCHomeViewController.swift
//  dojo-blur
//
//  Created by David McGraw on 11/3/14.
//  Copyright (c) 2014 xmcdojo. All rights reserved.
//

import UIKit
import QuartzCore

class XMCHomeViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var modalButton: UIButton!
    
    // Starts off with 0.0f alpha
    @IBOutlet weak var movingBox: UIView!
    @IBOutlet weak var movingBoxCenterYConstraint: NSLayoutConstraint!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        beginMovingBoxAnimation()
    }
    
    // MARK: IBActions
    @IBAction func closeModalController(segue: UIStoryboardSegue) {
        stopMovingBoxAnimation();
        
        dismissViewControllerAnimated(true, completion: nil);
    }
    
    // MARK: Animation  Helpers
    func beginMovingBoxAnimation() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.movingBox.alpha = 1.0
        })
        
        self.view.needsUpdateConstraints()
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat, animations: { () -> Void in
            self.movingBoxCenterYConstraint.constant = -self.movingBoxCenterYConstraint.constant
            self.view.layoutIfNeeded()
            }, completion: { (value: Bool) in
        })
    }
    
    func stopMovingBoxAnimation() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.movingBox.alpha = 0.0
        })
        self.view.layer.removeAllAnimations()
    }
}

