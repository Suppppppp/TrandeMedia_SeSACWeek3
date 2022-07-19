//
//  UIViewController+Extension.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/19.
//


import UIKit

extension UIViewController {
    
    func setBackgroundColor(){
        
        view.backgroundColor = .orange
    }
    
    func showAlert() {
        
        let alert = UIAlertController(title: "a", message: "b", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default)
        alert.addAction(ok)
        present(alert,animated: true)
        
    }
    
}
