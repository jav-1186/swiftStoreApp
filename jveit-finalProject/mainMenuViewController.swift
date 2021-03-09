//
//  mainMenuViewController.swift
//  jveit-finalProject
//
//  Created by Jeffrey Veit on 2/26/21.
//

import UIKit

class mainMenuViewController: UIViewController {

    @IBOutlet weak var descripL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var featuredLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        featuredLabel.text = "Meet the cleaner that we use on (almost) every surface in our home—my Homemade Citrus All-Purpose Cleaner. This baby has just a handful of ingredients—ones that you probably already have kicking around—and it is an all-natural, good-smelling cleaning machine!"
        welcomeLabel.text = "Welcome " + username + "!"
        descripL.text = "Welcome to Case al Natural! We are a local, earth conscious, sustainable and eco friendly company. We believe in delivering products to people that are good for them and the environment. Everything is made with REAL ingredients, no harsh chemicals ever. We hope you enjoy our products!"
        
    }
    
    @IBAction func addItem(_ sender: UIButton)
    {
        cartName.append("Orange Cleaner")
        cartPrice.append("$5.99")
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
