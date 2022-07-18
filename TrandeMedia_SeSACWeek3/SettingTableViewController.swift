//
//  SettingTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/18.
//

import UIKit

class SettingTableViewController: UITableViewController {

    var rowListGroup = [
                            ["공지사항","실험실","버전 정보"],
                            ["개인/보안","알림","채팅","멀티 프로필"],
                            ["고객센터/도움말"]
                        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


    }
    // MARK: - Number of section
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    // MARK: - Header Section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "전체 설정"
        } else if section == 1{
            return "개인 설정"
        } else if section == 2 {
            return "기타"
        } else{
            return "nothing"
        }
        
    }
    


    
    
    // MARK: - Rows in a section
    // How many rows will you put in a section?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return rowListGroup[section].count
        } else if section == 1{
            return rowListGroup[section].count
        } else if section == 2 {
            return rowListGroup[section].count
        } else{
            return 1
        }
    }

    
    // MARK: - Data,Design for a cell or all cell
    // Design and data for the corresponding cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllSetting")!
        
        cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = rowListGroup[indexPath.section][indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = rowListGroup[indexPath.section][indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text = rowListGroup[indexPath.section][indexPath.row]
        }
        
        return cell
    }


}
