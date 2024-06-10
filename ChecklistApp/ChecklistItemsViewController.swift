//
//  ChecklistItemsViewController.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class ChecklistItemsViewController: UIViewController {
    
    @IBOutlet var checklistItemsTable: UITableView!
    
    var checklistItems: [ChecklistItemsData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checklistItemsTable.dataSource = self
        checklistItemsTable.delegate = self
        //customizing nav bar
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(plusButton))
        
        checklistItems = [
        ChecklistItemsData(checklistItemsTitle: "Walk the dog"),
        ChecklistItemsData(checklistItemsTitle: "Brush Teeth"),
        ChecklistItemsData(checklistItemsTitle: "Learn iOS development"),
        ChecklistItemsData(checklistItemsTitle: "Soccer Practice"),
        ChecklistItemsData(checklistItemsTitle: "Eat ice cream"),
        ChecklistItemsData(checklistItemsTitle: "Dance in the rain")]
    }
    
    @objc func plusButton() {
        let aivc = sb.instantiateViewController(identifier: "AddItemViewController") as! AddItemViewController
        self.navigationController?.pushViewController(aivc, animated: true)
    }
}

extension ChecklistItemsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checklistItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItemsTableViewCell", for: indexPath) as! ChecklistItemsTableViewCell
        cell.checklistItemsTitle.text = checklistItems[indexPath.row].checklistItemsTitle
        
        if checklistItems[indexPath.row].checklistItemsImage == true {
            cell.checklistItemsCheckmark.image = UIImage(systemName: "checkmark")
        } else {
            cell.checklistItemsCheckmark.image = nil
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if checklistItems[indexPath.row].checklistItemsImage == false {
            checklistItems[indexPath.row].checklistItemsImage = true
        } else {
            checklistItems[indexPath.row].checklistItemsImage = false
        }
        
        tableView.reloadRows(at: [indexPath], with: .none)
    }
}
