//
//  XMCHomeViewController.swift
//  dojo-blur
//
//  Created by David McGraw on 11/3/14.
//  Copyright (c) 2014 xmcdojo. All rights reserved.
//

import UIKit

class XMCHomeViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var modalButton: UIButton!
    
    // MARK: IBActions
    @IBAction func closeModalController(segue: UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil);
    }
}

