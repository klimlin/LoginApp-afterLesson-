//
//  GeneralInfoViewController.swift
//  LoginApp(afterLesson)
//
//  Created by MAcbook on 08.11.2022.
//

import UIKit

class GeneralInfoViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var studyLabel: UILabel!
    @IBOutlet var interestLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        lastNameLabel.text = user.person.lastName
        jobLabel.text = user.person.job
        studyLabel.text = user.person.study
        interestLabel.text = user.person.interest
        photoImage.image = UIImage(named: user.person.photo)

    }
    
    

}
