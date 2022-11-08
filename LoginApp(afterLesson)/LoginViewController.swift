//
//  ViewController.swift
//  LoginApp(afterLesson)
//
//  Created by MAcbook on 08.11.2022.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "User"
    private let password = "1234"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    @IBAction func loginPressed() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(withTitle: "Invalid Login or Password", andMessage: "Please, enter correct login and password", textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Try: User")
        : showAlert(withTitle: "Oops!", andMessage: "Try: 1234")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    

}

// MARK: - Alertion

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
            
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
 }
