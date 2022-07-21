//
//  TrendTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/21.
//

import UIKit

class TrendTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func moviewButtonClicked(_ sender: UIButton) {
        
        // 1. StoryboardFile 2. v
        // 영화버튼 클릭 -> BucektlistTableViewController present
        
        //1.
        
        let sotryBoard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = sotryBoard.instantiateViewController(withIdentifier: BucketTableViewController.identifier) as! BucketTableViewController
        
        self.present(viewController, animated: true)
    }
    
    @IBAction func dramaButtonClicked(_ sender: UIButton) {
        
        let sotryBoard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = sotryBoard.instantiateViewController(withIdentifier: BucketTableViewController.identifier) as! BucketTableViewController
        
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)
    }
    
    
    @IBAction func bookButtonClicked(_ sender: UIButton) {
        let sotryBoard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = sotryBoard.instantiateViewController(withIdentifier: BucketTableViewController.identifier) as! BucketTableViewController
        
        let navigationController = UINavigationController(rootViewController: viewController)
        
        
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true)
        
        
        
    }
    
    
    
    
    
}
  
