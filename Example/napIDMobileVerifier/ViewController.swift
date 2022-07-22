//
//  ViewController.swift
//  napIDMobileVerifier
//
//  Created by AndroiddevnapID on 07/21/2022.
//  Copyright (c) 2022 AndroiddevnapID. All rights reserved.
//

import UIKit
import napIDMobileVerifier

class ViewController: UIViewController {

    @IBOutlet weak var TestImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TestImageView.circleImageView(borderColor: UIColor.white, borderWidth: 2.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

