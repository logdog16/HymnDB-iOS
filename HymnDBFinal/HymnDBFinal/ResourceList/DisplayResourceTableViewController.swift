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
        
        self.tableView.dataSource = self
        self.tableView.delegate = self

        let url = "http://ec2-34-209-251-224.us-west-2.compute.amazonaws.com:3000/resource/approved/type/book"
        
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                self.resourceList = JSON(value)
                print(self.resourceList.count)
                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
        self.tableView.reloadData()
        
        super.viewDidLoad();

}
    
}

extension DisplayResourceTableViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DisplayResourceTableCell else {
            fatalError("The dequeued cell is not an instance of DisplayResourceTableCell.")
        }
        
        
        cell.Title.text = self.resourceList[indexPath.row]["title"].string
        cell.Description.text = "By: " + self.resourceList[indexPath.row]["author"].string!
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.resourceList.count
    }
    
}
