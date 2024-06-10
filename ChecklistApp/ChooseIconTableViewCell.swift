//
//  ChooseIconTableViewCell.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 09/06/24.
//

import UIKit

class ChooseIconTableViewCell: UITableViewCell {

    @IBOutlet var iconImage: UIImageView!
    @IBOutlet var iconName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
