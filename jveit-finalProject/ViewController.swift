//
//  ViewController.swift
//  jveit-finalProject
//
//  Created by Jeffrey Veit on 2/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passField: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
  
    @IBAction func backTouch(_ sender: UIControl)
    {
        userText.resignFirstResponder()
        passField.resignFirstResponder()
    }
    
    @IBAction func editingEnded(_ sender: UITextField)
    {
        sender.resignFirstResponder()
    }
    
    @IBAction func editEnd(_ sender: UITextField)
    {
        sender.resignFirstResponder()
    }
    
    @IBAction func userGo(_ sender: UIButton)
    {
        username = userText.text!
    }
    
    @IBAction func firstTime(_ sender: Any)
    {
        let title = "First Time User"
        let message = "Please enter a username and password and your account will be created"
        let alertController =
            UIAlertController(title: title,
                              message: message,
                              preferredStyle: .alert)
        
        // Create the action.
        let cancelAction =
            UIAlertAction(title: "OK",
                          style: .cancel,
                          handler: nil)
        alertController.addAction(cancelAction)
        present(alertController,
                animated: true,
                completion: nil)
    }
    
    
}

