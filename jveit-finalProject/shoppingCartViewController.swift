//
//  shoppingCartViewController.swift
//  jveit-finalProject
//
//  Created by Jeffrey Veit on 3/3/21.
//

import UIKit

class shoppingCartViewController: UIViewController {

    
    @IBOutlet weak var priceTotal: UILabel!
    @IBOutlet weak var cartLabel: UILabel!
    var total: Float = 0.0
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
      var count: Int = 0
      var pri = " "
      for item in cartName
        {
            if count == 0
            {
                cartLabel.text = "\n" + item + "  " + cartPrice[count] + "\n"
                pri = String(cartPrice[count].dropFirst())
                total += Float(pri)!
                count += 1
            }
            
            else
            {
                cartLabel.text = cartLabel.text! + item + "  " + cartPrice[count] + "\n"
                pri = String(cartPrice[count].dropFirst())
                total += Float(pri)!
                count += 1
            }
        
        }
        
        priceTotal.text = "Total Amount: " + "$" + String(total)
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
