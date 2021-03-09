//
//  detailViewController.swift
//  jveit-finalProject
//
//  Created by Jeffrey Veit on 3/2/21.
//

import UIKit

class detailViewController: UIViewController {

    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemPic: UIImageView!
    @IBOutlet weak var itemDes: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    var item: Items?
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        if let t = item
        {
            itemPic.image = UIImage(named:t.name)
            titleLabel.text = t.name
            itemDes.text = t.longDescription
            priceLabel.text = "$" + String(t.price)
        }
    }
    
    @IBAction func addButton(_ sender: UIButton)
    {
        cartName.append(titleLabel.text!)
        cartPrice.append(priceLabel.text!)
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
