//
//  PracticeTableViewCell.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/20.
//

import UIKit

class PracticeTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    func configureCell(data: Movie) {
        
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.text = data.title
        releaseLabel.text = "\(data.releaseDate) | \(data.runtime) | \(data.rate)"
        overviewLabel.text = data.overview
        overviewLabel.numberOfLines = 0
        
        
    }
    

}
