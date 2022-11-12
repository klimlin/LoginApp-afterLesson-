//
//  QuotationViewController.swift
//  LoginApp(afterLesson)
//
//  Created by MAcbook on 08.11.2022.
//

import UIKit

class QuotationViewController: UIViewController {

    
    @IBOutlet var quatationLable: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quatationLable.text = user.person.quotation
       
    }

}
