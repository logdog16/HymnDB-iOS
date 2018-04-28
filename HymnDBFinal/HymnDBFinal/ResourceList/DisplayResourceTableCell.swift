//
//  DisplayResourceTableCell.swift
//  HymnDBFinal
//
//  Created by Logan Dorsey on 4/27/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit

class DisplayResourceTableCell: UITableViewCell {
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Description: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
import Foundation
