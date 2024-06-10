//
//  ChecklistTableViewCell.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class ChecklistTableViewCell: UITableViewCell {

    @IBOutlet var checklistIcon: UIImageView!
    @IBOutlet var infoIcon: UIImageView!
    @IBOutlet var arrowIcon: UIImageView!
    @IBOutlet var checklistTitle: UILabel!
    @IBOutlet var checklistDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
