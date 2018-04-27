//
//  DisplayResourceTableViewController.swift
//  HymnDBFinal
//
//  Created by Logan Dorsey on 4/26/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import MaterialComponents
import IBAnimatable
import IoniconsKit
import SwiftyJSON
import Alamofire
import AlamofireImage

class DisplayResourceTableViewController: UITableViewController {
    var resourceList:JSON = []
    
    
    override func viewDidLoad() {
        

        let url = "http://ec2-34-209-251-224.us-west-2.compute.amazonaws.com:3000/all/Book"
        
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                self.resourceList = JSON(value)
                print(self.resourceList)
            case .failure(let error):
                print(error)
            }
        }
        
        super.viewDidLoad()

}
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resourceList.count
    }
    
}
