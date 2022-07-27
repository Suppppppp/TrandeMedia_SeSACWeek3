//
//  BucketTableViewController.swift
//  TrandeMedia_SeSACWeek3
//
//  Created by KYUNGSUP GO on 2022/07/19.
//

import UIKit

struct Todo {
    var title: String
    var done: Bool
}

class BucketTableViewController: UITableViewController {
    
    static let identifier = "BucketTableViewController"

    var textFieldPlaceholder:String?
    
    
    @IBOutlet weak var userTextField: UITextField! {
        didSet {
            userTextField.textAlignment = .center
            userTextField.font = .boldSystemFont(ofSize: 22)
            userTextField.textColor = .systemRed
            print("텍스트 필드 호출")
        }
    }
    
    // list 프로퍼티가 추가, 삭제 등 변경되고 나서 테이블 뷰를 항상 갱신
    var list = [Todo(title: "범죄도시2", done: false),Todo(title: "탑건", done: false)] {
        didSet{
            tableView.reloadData()
            print("리스트가 변경됨 \(list), \(oldValue)")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("뷰디드로드 호출")
        
        userTextField.placeholder = "\(textFieldPlaceholder ?? "없음")를 입력해보세요"
        
        navigationItem.title = "버킷리스트"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
        
        
        
        tableView.rowHeight = 80
        

        
}
    @objc func closeButtonClicked() {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        
        
        
        
        
//        if let value = sender.text?.trimmingCharacters(in: .whitespaces), !value.isEmpty, (2...6).contains(value.count) {
//            list.append(value)
//            tableView.reloadData()
//        } else {
//            //토스트메세지 띄우기
//        }
//
//
//        guard let value = sender.text?.trimmingCharacters(in: .whitespaces), !value.isEmpty, (2...6).contains(value.count) else {
//            return
//        }
//        list.append(value)
//        tableView.reloadData()
//        list.append(sender.text!)
        list.append(Todo(title: sender.text!, done: false))
//        tableView.reloadData()
        
        //중요 !
        // 원래라면 table rowat뭐 이런거 다 불러야되는데 아래는 한줄로가능
//        tableView.reloadData()
        
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: BucketlistTableViewCell.identifier, for: indexPath) as! BucketlistTableViewCell // as! 타입캐스팅이고 customcell을 가져오는 거
//        cell.bucketlistLabel.text = list[indexPath.row]
        cell.bucketlistLabel.text = list[indexPath.row].title
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18)
        
        cell.checkboxButton.tag = indexPath.row
        cell.checkboxButton.addTarget(self, action: #selector(checkboxButtonClicked(forTag:)), for: .touchUpInside)
        
        let value = list[indexPath.row].done ? "checkmark.square.fill" : "checkmark.square"
        cell.checkboxButton.setImage(UIImage(systemName: value), for: .normal)
        
        return cell
        
        
    }
    
    @objc func checkboxButtonClicked(forTag: UIButton) {
        print("\(forTag.tag)버튼 클릭")
        
        // 배열 인덱스를 찾아서 done을 바꿔야한다. 그리고 테이블 뷰 갱신 해야한다.
        list[forTag.tag].done = !list[forTag.tag].done
        
        
//        tableView.reloadData()
        tableView.reloadRows(at: [IndexPath(row: forTag.tag, section: 0)], with: .fade)
        
        
        // 재사용 셀 오류 확인용 코드
//        forTag.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //우측 스와이프 스타일


    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
            if editingStyle == .delete {
                // 배열삭제 후 테이블 뷰 갱신
                list.remove(at: indexPath.row)
//                tableView.reloadData()
            }
        
    }
    


}

