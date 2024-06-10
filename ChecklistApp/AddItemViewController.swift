//
//  AddItemViewController.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 09/06/24.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1)
        //setting nav bar
        self.title = "Add Item"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelButton))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(cancelButton))
    }
    
    @objc func cancelButton() {
        navigationController?.popViewController(animated: true)
    }
}

extension AddItemViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddItemCell") ?? UITableViewCell()
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "RemindMeCell") ?? UITableViewCell()
//            //this didn't work
//            //setting empty header
//            if cell.contentView.viewWithTag(100) == nil {
//                let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 20))
//                headerView.backgroundColor = .clear
//                headerView.tag = 100
//                cell.contentView.addSubview(headerView)
//                
//                //re-adjusting cell content to set header
//                let contentViewFrame = CGRect(x: 0, y: 20, width: tableView.bounds.size.width, height: cell.contentView.bounds.size.height - 20)
//                let contentView = UIView(frame: contentViewFrame)
//                cell.contentView.addSubview(contentView)
//            }
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DueDateCell") ?? UITableViewCell()
            return cell
        }
    }
    
//    this didn't work
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 1 {
//            return 70
//        } else {
//            return 50
//        }
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 20))
        return header
    }
}
