//
//  ResourceListTableViewCell.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/18/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit

class ResourceListTableViewCell: UITableViewCell {

  //  @IBOutlet weak var resourceLabel: UILabel!
    //@IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var cardView: UIView!
   // @IBOutlet weak var cardBackground: UIImageView!
    @IBOutlet weak var resourceButton: UIButton!
    
    var assignedColor = UIColor.white
    
    override func awakeFromNib() {
        super.awakeFromNib()
       // resourceLabel.font = RobotoFont.regular(with: 27.0)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
       // self.cardView.backgroundColor = assignedColor
//        if selected {
//            UIView.animate(withDuration: 0.3, animations: {
//                self.cardView.backgroundColor = UIColor.green
//            })
//        } else {
//            self.cardView.backgroundColor = assignedColor
//        }
    }
    
//    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
//        
//    }
}
