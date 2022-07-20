//
//  RecommendCollectionViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/20.
//

import UIKit

/*
 TableView -> CollectionView
 Row -> item
 heightForRowAt -> FlowLayout (heightForItemAt이 없는 이유)
 */

class RecommendCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCollectionViewCell", for: indexPath) as! RecommendCollectionViewCell
        
        cell.porsterImage.backgroundColor = .orange
        return cell
    }


}
