//
//  AddChecklistViewController.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 07/06/24.
//

import UIKit

class AddChecklistViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1)
        tableView.dataSource = self
        tableView.delegate = self
        //customizing navbar
        self.title = "Add Checklist"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelButtonTapped))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonTapped))
    }
    
    @objc func cancelButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func doneButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = .clear
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddChecklistCell2TableViewCell", for: indexPath) as! AddChecklistCell2TableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //usually i should do this inside if indexPath.section == 1. but since the section 0 is already filled with textfield, it's working fine.
        let civc = sb.instantiateViewController(withIdentifier: "ChooseIconViewController") as! ChooseIconViewController
        //need explanation why setting delegate
        if let cell = tableView.cellForRow(at: indexPath) as? AddChecklistCell2TableViewCell {
                        civc.delegate = cell
                    }
        self.navigationController?.pushViewController(civc, animated: true)
    }
}

