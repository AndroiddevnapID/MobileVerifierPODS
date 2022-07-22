//
//  VerifierViewController.swift
//  napIDMobileVerifier
//
//  Created by napID on 22/07/22.
//

import UIKit

public class VerifierViewController: UIViewController {

    @IBOutlet weak var VerifywithnapID: UIButton!
    
    @IBOutlet weak var RegisterinnapID: UIButton!
    
    @IBOutlet weak var InstallnapID: UIButton!
    
    public  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        VerifywithnapID.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        RegisterinnapID.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        InstallnapID.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    
    @objc func buttonClicked(_ sender: AnyObject?) {
      if sender === VerifywithnapID {
        // do something
      } else if sender === RegisterinnapID {
        // do something
      } else if sender === InstallnapID {
          let instagramHooks = "napid://"
          let instagramUrl = URL(string: instagramHooks)!
          if UIApplication.shared.canOpenURL(instagramUrl)
          {
              UIApplication.shared.open(instagramUrl)
          } else {
              //redirect to safari because the user doesn't have Instagram
              UIApplication.shared.open(URL(string: "https://napid.co/")!)
          }
      }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
