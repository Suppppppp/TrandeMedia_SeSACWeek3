//
//  SettingTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/18.
//

import UIKit

// MARK: - lecture code
    // CaseIterable : 프로토콜 -> 배열처럼 열거형을 활용할 수 있는 특성
enum SettingOptions: Int, CaseIterable {
    case total, personal, others // 섹션에 대한 부분으로 자동으로 0,1,2가 들어갈거임
    
    var sectionTitle: String {
        switch self {
        case .total:
            return "전체설정"
        case .personal:
            return "개인설정"
        case .others:
            return "기타"
        }
    }
    
    //각각의 배열을 case별로 만든다
    var rowTitle: [String] {
        switch self {
        case .total:
            return ["공지사항","실험실","버전 정보"]
        case .personal:
            return ["개인/보안","알림","채팅","멀티 프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
}



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
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
    // MARK: - lecture Code
    override func numberOfSections(in tableView: UITableView) -> Int {
        SettingOptions.allCases.count
    }
    
    
    
    
//    // MARK: - Header Section
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//        if section == 0 {
//            return "전체 설정"
//        } else if section == 1{
//            return "개인 설정"
//        } else if section == 2 {
//            return "기타"
//        } else{
//            return "nothing"
//        }
//
//    }
    
// MARK: - lecture code
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingOptions.allCases[section].sectionTitle
    }
    


    
    
    // MARK: - Rows in a section
    // How many rows will you put in a section?
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        if section == 0 {
//            return rowListGroup[section].count
//        } else if section == 1{
//            return rowListGroup[section].count
//        } else if section == 2 {
//            return rowListGroup[section].count
//        } else{
//            return 1
//        }
//    }
// MARK: - lecture code
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return SettingOptions.allCases[section].rowTitle.count
        }
        
        

    
    
    // MARK: - Data,Design for a cell or all cell
    // Design and data for the corresponding cell
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "AllSetting")!
//
//        cell.textLabel?.font = .boldSystemFont(ofSize: 15)
//
//        if indexPath.section == 0 {
//            cell.textLabel?.text = rowListGroup[indexPath.section][indexPath.row]
//        } else if indexPath.section == 1 {
//            cell.textLabel?.text = rowListGroup[indexPath.section][indexPath.row]
//        } else if indexPath.section == 2 {
//            cell.textLabel?.text = rowListGroup[indexPath.section][indexPath.row]
//        }
//
//        return cell
//    }

// MARK: - lecture code

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllSetting")!
        cell.textLabel?.text = SettingOptions.allCases[indexPath.section].rowTitle[indexPath.row]
        return cell
    }


}
