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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "처음으로", style: .plain, target: self, action: #selector(resetButtonClicked))
        
        

        print("My Wold")
    }
    
  
    @objc func resetButtonClicked() {
        
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let sceneDelegate = windowScene?.delegate as? SceneDelegate
        
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        
        
        sceneDelegate?.window?.rootViewController = vc
        sceneDelegate?.window?.makeKeyAndVisible()
        
    }
    
    
    @IBAction func moviewButtonClicked(_ sender: UIButton) {
        
        // 1. StoryboardFile 2. v
        // 영화버튼 클릭 -> BucektlistTableViewController present
        
        //1.
        
        let sotryBoard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = sotryBoard.instantiateViewController(withIdentifier: BucketTableViewController.identifier) as! BucketTableViewController
        
        viewController.textFieldPlaceholder = "영화"
        
        self.present(viewController, animated: true)
    }
    
    @IBAction func dramaButtonClicked(_ sender: UIButton) {
        
        let sotryBoard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = sotryBoard.instantiateViewController(withIdentifier: BucketTableViewController.identifier) as! BucketTableViewController
        
        viewController.textFieldPlaceholder = "드라마"
        
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)
    }
    
    ///  주석세계
    @IBAction func bookButtonClicked(_ sender: UIButton) {
        let sotryBoard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = sotryBoard.instantiateViewController(withIdentifier: BucketTableViewController.identifier) as! BucketTableViewController
        
        
        viewController.textFieldPlaceholder = "도서"
        
        let navigationController = UINavigationController(rootViewController: viewController)
        
        
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true)
        
        
        
    }
    
    
    
    
    
}
  
