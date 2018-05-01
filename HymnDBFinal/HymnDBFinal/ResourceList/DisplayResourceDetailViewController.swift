//
//  DisplayResourceDetailViewController.swift
//  HymnDBFinal
//
//  Created by Logan Dorsey on 4/27/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class DisplayResourceDetailViewController: UIViewController
{
    var toDisplay:JSON = []
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionBox: UITextView!
    @IBOutlet weak var visitButton: UIButton!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print(toDisplay)
        titleLabel.text = toDisplay["title"].string
        authorLabel.text = toDisplay["author"].string
        descriptionBox.text = toDisplay["description"].string
        let likesStr = String (toDisplay["likes"].int!)
        likesLabel.text = "Likes: " + likesStr
        
    }
    @IBAction func likeButtonPressed(_ sender: Any)
    {
        
    }
    @IBAction func visitButtonPressed(_ sender: Any)
    {
        if let link = URL(string: toDisplay["url"].string!)
        {
            UIApplication.shared.open(link)
        }
    }
    
    
    
}
