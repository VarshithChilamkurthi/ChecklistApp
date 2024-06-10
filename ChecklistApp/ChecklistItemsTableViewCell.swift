//
//  ChecklistItemsTableViewCell.swift
//  ChecklistApp
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class ChecklistItemsTableViewCell: UITableViewCell {

    @IBOutlet var checklistItemsCheckmark: UIImageView!
    @IBOutlet var checklistItemsTitle: UILabel!
    @IBOutlet var checklistItemsInfo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
