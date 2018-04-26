//
//  BookViewController.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 4/25/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import MaterialComponents
import IBAnimatable
import IoniconsKit
import SwiftyJSON
import Alamofire
import AlamofireImage


class BookViewController: UIViewController{
    
    @IBOutlet weak var bookLabel: UILabel!
    
    @IBOutlet weak var hymnLabel: UILabel!
    override func viewDidLoad() {
        
        hymnLabel.layer.cornerRadius = 10
        hymnLabel.backgroundColor = .gray
        
        
        let todoEndpoint: String = "http://ec2-34-209-251-224.us-west-2.compute.amazonaws.com:3000/all/Book"
        let url = "http://ec2-34-209-251-224.us-west-2.compute.amazonaws.com:3000/all/Book"
        
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                self.bookLabel.text = json["resources"][0]["description"].string
            case .failure(let error):
                print(error)
            }
        }

        
        
//        Alamofire.request(todoEndpoint)
//            .responseString { response in
//                // print response as string for debugging, testing, etc.
//                bookLabel.text = response.result.value
//                print(response.result.value)
//                //print(response.result.error)
//        }
        super.viewDidLoad()
       
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
