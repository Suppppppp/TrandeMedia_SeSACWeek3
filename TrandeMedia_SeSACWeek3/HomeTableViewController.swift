//
//  SettingTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/18.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    var birthdayFriends = ["뽀로로","밍크","신데렐라","스노기","모구리","고래밥"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80 //defalut row size = 44임

    }

    
    // 섹션의 개수 **옵션)
    // 보통 섹션 개수 * 셀의 개수 로 화면에 나오고
    // 섹션의 개수는 디폴트가 1이라 별도의 섹션이 필요하게 아니면 굳이 사용안해도 된다
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "생일인 친구"
        } else if section == 1 {
            return "즐겨찾기"
        } else if section == 2 {
            return "친구 140명"
        }
        return "섹션"
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "푸터 "
    }
    
    
    //1. 셀의 갯수. :numberOfRowsInSection **필수**
    // (데이터의 양에 따라서 개수가 달라지게 )
    // ex. 카톡 친구가 100명 이면 셀 100개 300명이면 300개를
    
    // **섹션의 수와 셀의 수는 다른 개념이다
    // 이거는 셀의 개수임
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return birthdayFriends.count
        } else if section == 1 {
            return 4
        } else if section == 2 {
            return 3
        } else {
            return 0
        }
        
        return 3 // 셀을 ?개의 셀을 달라
    }
    
    
    //2. 셀의 디자인과 데이터 : cellForRowAt  ** 필수**
    // ex. 카톡에 사람을 보여주려면 이름,상메,메세지가 다 다르게나오니까
    // a친구는 이렇게  b친구는 이렇게 보이도록 넣어주는 거
    // 재사용 메커니즘
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("cellforrowat",indexPath)
        
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "rightDetailCell")!
            
            cell.textLabel?.text  = "2번 인덱스 섹션의 텍스트"
            cell.textLabel?.textColor = .brown
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
            cell.detailTextLabel?.text = "디테일 레이블"
            
            //indexpath.row % 2로 나눠줌
            // 삼항연산자로 번갈아가면서 나오는 효과
            
            if indexPath.row % 2 == 0 {
             
                cell.imageView?.image = UIImage(systemName:  "star")
                cell.backgroundColor = .lightGray
            } else {
                cell.imageView?.image = UIImage(systemName:  "star.fill")
                cell.backgroundColor = .white
            }
            
            cell.imageView?.image = indexPath.row % 2 == 0 ? UIImage (systemName: "star") : UIImage(systemName: "star.fill")
            cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
            
            return cell
        } else {
            
            //셀 100개에 대해 재사용하겠다~
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
            
            if indexPath.section == 0 {
                
                cell.textLabel?.text = birthdayFriends[indexPath.row]
                cell.textLabel?.textColor = .systemBrown
                cell.textLabel?.font = .boldSystemFont(ofSize: 20)
                
            } else if indexPath.section == 1 {
                cell.textLabel?.text  = "1번 텍스트"
                cell.textLabel?.textColor = .systemPink
                cell.textLabel?.font = .boldSystemFont(ofSize: 25)
                
            }
            return cell
            
        }
    }
    
    // 셀의 높이 옵션
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 100
    }

}
