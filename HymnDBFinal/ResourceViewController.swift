//
//  ResourceViewController.swift
//  HymnDBFinal
//
//  Created by Emily Stephanina on 4/17/18.
//  Copyright © 2018 Emily Stephanian. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import AlamofireImage


class ResourceViewController: UIViewController {

   
    
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tile1: UIButton!
    @IBOutlet weak var tile2: UIButton!
    @IBOutlet weak var tile3: UIButton!
    @IBOutlet weak var tile4: UIButton!
    @IBOutlet weak var tile5: UIButton!
    @IBOutlet weak var tile6: UIButton!
    @IBOutlet weak var tile7: UIButton!
    @IBOutlet weak var tiile8: UIButton!
    @IBOutlet weak var tile9: UIButton!
    @IBOutlet weak var tile10: UIButton!
    @IBOutlet weak var tile11: UIButton!
    @IBOutlet weak var tile12: UIButton!
    @IBOutlet weak var tile13: UIButton!
    @IBOutlet weak var tile14: UIButton!
    
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
            
            home.layer.borderWidth = 1.0
            home.layer.borderColor = UIColor(white: 1, alpha: 0.7).cgColor

            tile1.layer.borderWidth = 1.0;
            tile1.backgroundColor = UIColor.white
            tile1.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile1.layer.cornerRadius = 0
            tile1.layer.shadowOffset = CGSize.zero
            tile1.layer.shadowColor = UIColor.black.cgColor
            
            //Make this into a method
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/books-education-school-literature-48126.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile1.setBackgroundImage(image, for: UIControlState.normal)
                self.tile1.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
            
            }
         

            tile1.layer.shadowRadius = 5
            tile1.layer.shadowOpacity = 0.4

            tile2.layer.borderWidth = 1.0;
            tile2.backgroundColor = UIColor.white
            tile2.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile2.layer.cornerRadius = 0
            tile2.alpha = 0.7
            tile2.layer.shadowOffset = CGSize.zero
            tile2.layer.shadowColor = UIColor.black.cgColor
            tile2.layer.shadowRadius = 5
            tile2.layer.shadowOpacity = 0.4
          
            
            tile3.layer.borderWidth = 1.0;
            tile3.backgroundColor = UIColor.white
            tile3.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile3.layer.cornerRadius = 0
            tile3.layer.shadowOffset = CGSize.zero
            tile3.layer.shadowColor = UIColor.black.cgColor
            tile3.layer.shadowRadius = 5
            tile3.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/open-book-library-education-read-159621.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile3.setBackgroundImage(image, for: UIControlState.normal)
                self.tile3.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
        
            tile4.layer.borderWidth = 1.0;
            tile4.backgroundColor = UIColor.white
            tile4.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile4.layer.cornerRadius = 0
            tile4.layer.shadowOffset = CGSize.zero
            tile4.layer.shadowColor = UIColor.black.cgColor
            tile4.layer.shadowRadius = 5
            tile4.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-518543.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile4.setBackgroundImage(image, for: UIControlState.normal)
                self.tile4.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
        
            tile5.layer.borderWidth = 1.0;
            tile5.backgroundColor = UIColor.white
            tile5.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile5.layer.cornerRadius = 0
            tile5.layer.shadowOffset = CGSize.zero
            tile5.layer.shadowColor = UIColor.black.cgColor
            tile5.layer.shadowRadius = 5
            tile5.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-267569.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile5.setBackgroundImage(image, for: UIControlState.normal)
                self.tile5.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tile6.layer.borderWidth = 1.0;
            tile6.backgroundColor = UIColor.white
            tile6.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile6.layer.cornerRadius = 0
            tile6.layer.shadowOffset = CGSize.zero
            tile6.layer.shadowColor = UIColor.black.cgColor
            tile6.layer.shadowRadius = 5
            tile6.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/startup-photos.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile6.setBackgroundImage(image, for: UIControlState.normal)
                self.tile6.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
        
            tile7.layer.borderWidth = 1.0;
            tile7.backgroundColor = UIColor.white
            tile7.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile7.layer.cornerRadius = 0
            tile7.layer.shadowOffset = CGSize.zero
            tile7.layer.shadowColor = UIColor.black.cgColor
            tile7.layer.shadowRadius = 5
            tile7.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-261706.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile7.setBackgroundImage(image, for: UIControlState.normal)
                self.tile7.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tiile8.layer.borderWidth = 1.0;
            tiile8.backgroundColor = UIColor.white
            tiile8.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tiile8.layer.cornerRadius = 0
            tiile8.layer.shadowOffset = CGSize.zero
            tiile8.layer.shadowColor = UIColor.black.cgColor
            tiile8.layer.shadowRadius = 5
            tiile8.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/microphone-audio-computer-sound-recording-55800.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tiile8.setBackgroundImage(image, for: UIControlState.normal)
                self.tiile8.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tile9.layer.borderWidth = 1.0;
            tile9.backgroundColor = UIColor.white
            tile9.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile9.layer.cornerRadius = 0
            tile9.layer.shadowOffset = CGSize.zero
            tile9.layer.shadowColor = UIColor.black.cgColor
            tile9.layer.shadowRadius = 5
            tile9.alpha = 0.7
            tile9.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-635005.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile9.setBackgroundImage(image, for: UIControlState.normal)
                self.tile9.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tile10.layer.borderWidth = 1.0;
            tile10.backgroundColor = UIColor.white
            tile10.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile10.layer.cornerRadius = 0
            tile10.alpha = 0.7
            tile10.layer.shadowOffset = CGSize.zero
            tile10.layer.shadowColor = UIColor.black.cgColor
            tile10.layer.shadowRadius = 5
            tile10.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-66134.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile10.setBackgroundImage(image, for: UIControlState.normal)
                self.tile10.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tile11.layer.borderWidth = 1.0;
            tile11.backgroundColor = UIColor.white
            tile11.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile11.layer.cornerRadius = 0
            tile11.backgroundColor = UIColor(white:1, alpha:0.0)
            tile11.alpha = 0.7
            tile11.layer.shadowOffset = CGSize.zero
            tile11.layer.shadowColor = UIColor.black.cgColor
            tile11.layer.shadowRadius = 5
            tile11.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-133699.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile11.setBackgroundImage(image, for: UIControlState.normal)
                self.tile11.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tile12.layer.borderWidth = 1.0;
            tile12.backgroundColor = UIColor.white
            tile12.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile12.layer.cornerRadius = 0
            tile12.layer.shadowOffset = CGSize.zero
            tile12.layer.shadowColor = UIColor.black.cgColor
            tile12.layer.shadowRadius = 5
            tile12.alpha = 0.7
            tile12.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-296883.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile12.setBackgroundImage(image, for: UIControlState.normal)
                self.tile12.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tile13.layer.borderWidth = 1.0;
            tile13.backgroundColor = UIColor(white:1, alpha:0.5)
            tile13.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile13.layer.cornerRadius = 0
            tile13.layer.shadowOffset = CGSize.zero
            tile13.layer.shadowColor = UIColor.black.cgColor
            tile13.layer.shadowRadius = 5
            tile13.alpha = 0.7
            tile13.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/people-eiffel-tower-lights-night.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile13.setBackgroundImage(image, for: UIControlState.normal)
                self.tile13.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            tile14.layer.borderWidth = 1.0;
            tile14.backgroundColor = UIColor.white
            tile14.layer.borderColor = UIColor(white: 0.5, alpha: 0.7).cgColor
            tile14.layer.cornerRadius = 0
            tile14.layer.shadowOffset = CGSize.zero
            tile14.layer.shadowColor = UIColor.black.cgColor
            tile14.layer.shadowRadius = 5
            tile14.alpha = 0.7
            tile14.layer.shadowOpacity = 0.4
            Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-296881.jpg", method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                self.tile14.setBackgroundImage(image, for: UIControlState.normal)
                self.tile14.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
                
                // Do stuff with your image
            }
            
            
            
//
            label1.layer.shadowOffset = CGSize.zero
            label1.layer.shadowColor = UIColor.black.cgColor
            label1.layer.shadowRadius = 5
            label1.layer.shadowOpacity = 0.4
        
            
            
            
        }

    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
}

