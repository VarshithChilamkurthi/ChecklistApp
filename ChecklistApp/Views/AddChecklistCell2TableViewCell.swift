//
//  AddChecklistCell2TableViewCell.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 09/06/24.
//

import UIKit

//protocol changeCell2Data {
//    func changeCell2Data(_ iconName: String, _ iconImage: String)
//}
//
//struct IconVariables {
//    var iconName: String
//    var iconImage: String
//}

class AddChecklistCell2TableViewCell: UITableViewCell {

    @IBOutlet var cell2IconName: UILabel!
    @IBOutlet var cell2IconImage: UIImageView!
    
//    var iconVariables: IconVariables?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func changeCell2Data(_ iconName: String, _ iconImage: String) {
        cell2IconName.text = iconName
        cell2IconImage.image = UIImage(systemName: iconImage)
    }

}
