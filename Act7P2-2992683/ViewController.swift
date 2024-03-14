//
//  ViewController.swift
//  Act7P2-2992683
//
//  Created by Alumno on 11/03/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }

    @IBAction func pressForgotUsernameBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotUsernameButton)
    }
    
    @IBAction func pressForgotPasswordBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotPasswordButton)
    }
}

