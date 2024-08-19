//
//  ViewController.swift
//  Responsive
//
//  Created by Mac User on 8/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnResetAction(_ sender: Any) {
        // creating alert
        let alert = UIAlertController(title: "Reset", message: "Are you sure you want to reset?", preferredStyle: .alert)
        
        // adding buttons on alert
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler:{UIAlertAction in   self.txtPassword.text = ""
            self.txtUsername.text = ""
            self.txtEmail.text = ""
            self.txtConfirmPassword.text = ""
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        
        self.present(alert, animated: true)
    }
    

}

