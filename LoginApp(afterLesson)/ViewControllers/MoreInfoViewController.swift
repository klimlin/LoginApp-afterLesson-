//
//  MoreInfoViewController.swift
//  LoginApp(afterLesson)
//
//  Created by MAcbook on 08.11.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    
    @IBOutlet var inspiringPersonLabel: UILabel!
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inspiringPersonLabel.text = user.person.inspiringPerson
        
    }

}
