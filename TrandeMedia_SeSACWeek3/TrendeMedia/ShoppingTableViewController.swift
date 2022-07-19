//
//  ShoppingTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/19.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    @IBOutlet weak var addButtonOutlet_TextField: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButtonOutlet_TextField.clipsToBounds = true
        addButtonOutlet_TextField.layer.cornerRadius = 8

    }
    
    
    
    
    
}
