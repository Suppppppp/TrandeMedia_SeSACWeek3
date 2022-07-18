//
//  ViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/18.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var dataPicker: UIDatePicker!
    //언제 outlet collection을 사용하는 것이 좋을까 ?
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var date2Label: UILabel!
    
    @IBOutlet var dateLabelCollection: [UILabel]!

    let format = DateFormatter()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        format.dateFormat = "yyyy/MM/dd"

    }

    
    func configureLabelDesign(){
        //1. OutletCollection
        for i in dateLabelCollection {
        i.font = .boldSystemFont(ofSize: 20)
        i.textColor = .brown
        }
    
    
    //2. UILabel
    
    let labelArray = [dateLabel, date2Label ]
    for i in labelArray {
        i?.font = .boldSystemFont(ofSize: 20)
        i?.textColor = .brown
    }
    
    dateLabel.text = "첫번째 텍스트"
    date2Label.text = "두번째 텍스트"
    }
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        

        dateLabel.text = format.string(from: sender.date)
        
        
    }
    
    
}

