//
//  WelcomeViewController.swift
//  LoginApp(afterLesson)
//
//  Created by MAcbook on 08.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
        
    }

}
