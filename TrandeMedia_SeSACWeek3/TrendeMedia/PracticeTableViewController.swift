//
//  PracticeTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/20.
//

import UIKit

class PracticeTableViewController: UITableViewController {

    
    var movieList = MovieInfo()
//    ["암살","괴물","해리포터와 해리포터 해리포터", "내머리속의 지우기","기모햔 이야기", "라라랜드","라이언 일별 구하기","외계+인"]
    
    override func viewDidLoad() {
        super.viewDidLoad()


}
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movie.count
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PracticeTableViewCell",for: indexPath) as! PracticeTableViewCell
        
        
        let data = movieList.movie[indexPath.row
        ]
        
        cell.configureCell(data: data)
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height / 8 //전체 디바이스 높이 나누기/8
    }
    
    
    
    
    
    
    
    
    
    
}
