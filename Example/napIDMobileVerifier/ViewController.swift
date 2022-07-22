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
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "VerifierViewController") as! napIDMobileVerifier.VerifierViewController
//        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true, completion: nil)
        
       
    }
    override func viewDidAppear(_ animated: Bool) {
         let storyboardName = "VerifierStoryboard"
        let storyboardBundle = Bundle(for: VerifierViewController.self)
        let storyBoard : UIStoryboard = UIStoryboard(name: storyboardName, bundle:storyboardBundle)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "VerifierViewController") as! napIDMobileVerifier.VerifierViewController
        self.present(nextViewController, animated:true, completion:nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

