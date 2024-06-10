//
//  ChooseIconViewController.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 09/06/24.
//

import UIKit

class ChooseIconViewController: UIViewController {

    @IBOutlet var chooseIconTable: UITableView!
    
    var iconData: [ChooseIconData] = []
    var delegate: changeCell2Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseIconTable.dataSource = self
        chooseIconTable.delegate = self
        self.title = "Choose Icon"
        
        //icon data creation
        iconData = [
        ChooseIconData(image: "deskclock", iconName: "Appointments"),
        ChooseIconData(image: "gift", iconName: "Birthdays"),
        ChooseIconData(image: "house", iconName: "Chores"),
        ChooseIconData(image: "wineglass", iconName: "Drinks"),
        ChooseIconData(image: "folder", iconName: "Folder"),
        ChooseIconData(image: "carrot", iconName: "Groceries"),
        ChooseIconData(image: "tray.and.arrow.down", iconName: "Inbox"),
        ChooseIconData(image: "camera", iconName: "Photos"),
        ChooseIconData(image: "airplane", iconName: "Trips")]
    }
}

extension ChooseIconViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconData.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChooseIconTableViewCell", for: indexPath) as! ChooseIconTableViewCell
        if indexPath.row == 0 {
            cell.iconName.text = "No Icon"
        } else {
            // using indexPath.row - 1 because there are only 9 values in iconData but there is 10 count. So for 0th row we're giving No Icon and from 1st row we're giving data from iconData[0] till iconData[9]
            cell.iconImage.image = UIImage(systemName: iconData[indexPath.row - 1].image)
            cell.iconName.text = iconData[indexPath.row - 1].iconName
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            print(indexPath.row)
            print("No Icon")
            delegate?.changeCell2Data("No Icon", "folder")
            navigationController?.popViewController(animated: true)
        } else {
            print(indexPath.row)
            print(iconData[indexPath.row - 1].iconName)
            print(iconData[indexPath.row - 1].image)
            delegate?.changeCell2Data(iconData[indexPath.row - 1].iconName, iconData[indexPath.row - 1].image)
            navigationController?.popViewController(animated: true)
        }
    }
}
