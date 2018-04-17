//
//  ViewController.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 2/20/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sing: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sing.layer.shadowOffset = CGSize.zero
        sing.layer.shadowColor = UIColor.black.cgColor
        sing.layer.shadowRadius = 5
        sing.layer.shadowOpacity = 1.0
        
        myButton.layer.borderWidth = 1.0;
        myButton.backgroundColor = UIColor.white
        myButton.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
        myButton.layer.cornerRadius = 0
        myButton.layer.shadowOffset = CGSize.zero
        myButton.layer.shadowColor = UIColor.black.cgColor
        myButton.layer.shadowRadius = 5
        myButton.layer.shadowOpacity = 1.0
        
        myButton2.layer.shadowOffset = CGSize.zero
        myButton2.layer.shadowColor = UIColor.black.cgColor
        myButton2.layer.shadowRadius = 5
        myButton2.layer.shadowOpacity = 1.0
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

