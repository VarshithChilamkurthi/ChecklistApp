//
//  ChecklistViewController.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class ChecklistViewController: UIViewController {

    @IBOutlet var checklistTable: UITableView!
    
    var checklistData: [ChecklistData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checklistTable.dataSource = self
        checklistTable.delegate = self
        self.title = "Checklist"
        //setting the plus button
        let plusButton = UIAction() { (plusButton) in
            let pvc = sb.instantiateViewController(withIdentifier: "AddChecklistViewController") as! AddChecklistViewController
            self.navigationController?.pushViewController(pvc, animated: true)
        }
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), primaryAction: plusButton)
        
        checklistData = [
            ChecklistData(checklistTitle: "Birthdays", checklistIcon: "gift", checklistDesc: "2 Remaining"),
            ChecklistData(checklistTitle: "Business Stuff", checklistIcon: "folder", checklistDesc: "5 Remaining"),
            ChecklistData(checklistTitle: "Chores", checklistIcon: "house", checklistDesc: "All Done!"),
            ChecklistData(checklistTitle: "Groceries", checklistIcon: "carrot", checklistDesc: "[No Items]"),
            ChecklistData(checklistTitle: "To Do", checklistIcon: "tray.and.arrow.down", checklistDesc: "3 Remaining"),
            ChecklistData(checklistTitle: "Trip to Japan", checklistIcon: "airplane.departure", checklistDesc: "[No Items]")
        ]
    }
}

extension ChecklistViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checklistData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistTableViewCell", for: indexPath) as! ChecklistTableViewCell
        cell.checklistTitle.text = checklistData[indexPath.row].checklistTitle
        cell.checklistDesc.text = checklistData[indexPath.row].checklistDesc
        cell.checklistIcon.image = UIImage(systemName: checklistData[indexPath.row].checklistIcon)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let civc = sb.instantiateViewController(withIdentifier: "ChecklistItemsViewController") as! ChecklistItemsViewController

        self.navigationController?.pushViewController(civc, animated: true)
        civc.title = checklistData[indexPath.row].checklistTitle
    }
    
    
}

