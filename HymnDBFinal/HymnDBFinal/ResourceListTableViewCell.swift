//
//  ResourceListTableViewCell.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/17/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import Material
import MaterialComponents

class ResourceListTableViewCell: UITableViewCell {

    @IBOutlet weak var resourceLabel: UILabel!
    @IBOutlet weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        resourceLabel.font = RobotoFont.regular(with: 27.0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        
        self.cardView.backgroundColor = UIColor.init(hex: "cccccc")
        if selected {
            UIView.animate(withDuration: 0.3, animations: {
                self.cardView.backgroundColor = self.assignedColor.darkerColor()
            })
        }
        else {
            self.cardView.backgroundColor = assignedColor
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        
    }
}
