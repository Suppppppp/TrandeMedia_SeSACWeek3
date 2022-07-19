//
//  BucketTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/19.
//

import UIKit

class BucketTableViewController: UITableViewController {

    @IBOutlet weak var userTextField: UITextField!
    
    var list = ["범죄도시2","탑건","토르"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        

        
}
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        
        list.append(sender.text!)
        
        //중요 !
        // 원래라면 table rowat뭐 이런거 다 불러야되는데 아래는 한줄로가능
        tableView.reloadData()
        
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketlistTableViewCell", for: indexPath) as! BucketlistTableViewCell // as! 타입캐스팅이고 customcell을 가져오는 거
        cell.bucketlistLabel.text = list[indexPath.row]
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18)
        
        return cell
        
        
    }
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //우측 스와이프 스타일


    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
            if editingStyle == .delete {
                // 배열삭제 후 테이블 뷰 갱신
                list.remove(at: indexPath.row)
                
            }
        
    }
    


}

