//
//  ResourceViewController.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 2/20/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit

class ResourceViewController: UIViewController {

   
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tile1: UIButton!
    @IBOutlet weak var tile2: UIButton!
    @IBOutlet weak var tile3: UIButton!
    @IBOutlet weak var tile4: UIButton!
    @IBOutlet weak var tile5: UIButton!
    @IBOutlet weak var tile6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
//        @IBOutlet weak var sing: UILabel!
//
//        @IBOutlet weak var tile1: UIButton!
//
//        @IBOutlet weak var tile12: UIButton!
//
//        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            

            tile1.layer.borderWidth = 1.0;
            tile1.backgroundColor = UIColor.white
            tile1.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile1.layer.cornerRadius = 0
            tile1.layer.shadowOffset = CGSize.zero
            tile1.layer.shadowColor = UIColor.black.cgColor
            tile1.layer.shadowRadius = 5
            tile1.layer.shadowOpacity = 1.0

        tile2.layer.borderWidth = 1.0;
        tile2.backgroundColor = UIColor.white
        tile2.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
        tile2.layer.cornerRadius = 0
        tile2.layer.shadowOffset = CGSize.zero
        tile2.layer.shadowColor = UIColor.black.cgColor
        tile2.layer.shadowRadius = 5
        tile2.layer.shadowOpacity = 1.0
        
        tile3.layer.borderWidth = 1.0;
        tile3.backgroundColor = UIColor.white
        tile3.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
        tile3.layer.cornerRadius = 0
        tile3.layer.shadowOffset = CGSize.zero
        tile3.layer.shadowColor = UIColor.black.cgColor
        tile3.layer.shadowRadius = 5
        tile3.layer.shadowOpacity = 1.0
        
        tile4.layer.borderWidth = 1.0;
        tile4.backgroundColor = UIColor.white
        tile4.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
        tile4.layer.cornerRadius = 0
        tile4.layer.shadowOffset = CGSize.zero
        tile4.layer.shadowColor = UIColor.black.cgColor
        tile4.layer.shadowRadius = 5
        tile4.layer.shadowOpacity = 1.0
        
        tile5.layer.borderWidth = 1.0;
        tile5.backgroundColor = UIColor.white
        tile5.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
        tile5.layer.cornerRadius = 0
        tile5.layer.shadowOffset = CGSize.zero
        tile5.layer.shadowColor = UIColor.black.cgColor
        tile5.layer.shadowRadius = 5
        tile5.layer.shadowOpacity = 1.0
        
        tile6.layer.borderWidth = 1.0;
        tile6.backgroundColor = UIColor.white
        tile6.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
        tile6.layer.cornerRadius = 0
        tile6.layer.shadowOffset = CGSize.zero
        tile6.layer.shadowColor = UIColor.black.cgColor
        tile6.layer.shadowRadius = 5
        tile6.layer.shadowOpacity = 1.0
        
        
//
            label1.layer.shadowOffset = CGSize.zero
            label1.layer.shadowColor = UIColor.black.cgColor
            label1.layer.shadowRadius = 5
            label1.layer.shadowOpacity = 1.0
        
            
            
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
}

