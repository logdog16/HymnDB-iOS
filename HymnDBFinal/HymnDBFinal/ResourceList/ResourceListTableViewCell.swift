//
//  ResourceListTableViewCell.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/18/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import MaterialComponents

class ResourceListTableViewCell: UITableViewCell {

    @IBOutlet weak var resourceLabel: UILabel!
    //@IBOutlet weak var backgroundView: UIImageView!
    //@IBOutlet weak var cardView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       // resourceLabel.font = RobotoFont.regular(with: 27.0)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
       
    }
    
//    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
//        
//    }
}
