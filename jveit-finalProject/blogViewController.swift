//
//  blogViewController.swift
//  jveit-finalProject
//
//  Created by Jeffrey Veit on 3/4/21.
//

import UIKit

class blogViewController: UIViewController {

    
    @IBOutlet weak var blogLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        blogLabel.text = "Are organic foods healthier and safer? Learn more in our easy-to-understand videos on the latest research.You may be surprised to learn that a review of hundreds of studies found that organic foods don’t seem to have significantly more vitamins and minerals. They do, however, appear to have more nontraditional nutrients, like polyphenol antioxidants, perhaps because conventionally grown plants given high-dose synthetic nitrogen fertilizers may divert more resources to growth rather than defense. This may be why organic berries, for example, appear to suppress cancer growth better than conventional berries in vitro."
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
