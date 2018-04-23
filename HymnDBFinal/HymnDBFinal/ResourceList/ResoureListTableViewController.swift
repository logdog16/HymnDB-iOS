//
//  ResoureListTableViewController.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/18/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import MaterialComponents
import IBAnimatable
import IoniconsKit
import SwiftyJSON

class ResourceListTableViewController: UITableViewController {
    
    @IBOutlet weak var home: UIButton!

    
    var resourceList:[JSON] = []
    var selectedRow = 0
    
//    let TABLEVIEW_BACKGROUND_COLOR = "FD7F12"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Browse Resources"
        
        
        // configure the Resource List
        resourceList = [
                        ["resourceTitle": "Books",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "1"],
                        ["resourceTitle": "Hymnals/Songbooks",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "2"],
                        ["resourceTitle": "Thesis/Dissertations",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "3"],
                        ["resourceTitle": "Articles",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "4"],
                        ["resourceTitle": "Blogs",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "5"],
                        ["resourceTitle": "Forum",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "6"],
                        ["resourceTitle": "Newsletter/E-News",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "7"],
                        ["resourceTitle": "Audio Tracks",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "8"],
                        ["resourceTitle": "Podcasts",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "9"],
                        ["resourceTitle": "Videos/Visuals",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "10"],
                        ["resourceTitle": "Congregations",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "11"],
                        ["resourceTitle": "Organizations",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "12"],
                        ["resourceTitle": "Events",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "13"],
                        ["resourceTitle": "Persons",
                         "resourceImage": "books-education-school-literature-48126.jpg",
                         "resourceId": "14"],
        ]
        
        
       // self.tableView.backgroundColor = UIColor.init(hex: TABLEVIEW_BACKGROUND_COLOR)
        
    }
    
    func reloadView(){
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    // There's only one list of resources (in browse resources)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of rows = number of resources
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resourceList.count
    }
    
    // setting each row to a resource value
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResourceListCell", for: indexPath) as! ResourceListTableViewCell
        
        // get the resource from the resourceList
        let resource = resourceList[indexPath.row]
        
        // set the title to a string
        if let resourceTitle = resource["resourceTitle"].string {
            cell.resourceLabel.text = resourceTitle
        }
        
        // set the background image to a value
//        if resource["resourceImage"].string != nil {
//            let image = ApiHelper.getResourceImg(resource["resourceImage"])
//            cell.backgroundView = image
//        }
        
        
        
//        self.tile3.addTarget(self, action: "Action:", for:UIControlEvents.touchUpInside)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
//        goToResource(row: indexPath.row)
    }
    
//    func goToResource(row:Int) {
//        let nextViewController = AppStoryboard.ResourceInfo.initialViewController()! as! ResourceInfoTableViewController
//        nextViewController.resourceId = self.resourceList[row]["resourceID"].stringValue
//        nextViewController.tableViewBackgroundColor = UIColor(hex:self.resourceList[row]["color"].stringValue).lighterColor(percentage: 1.3, withSaturation: 0.5)
//        //        nextViewController.tableViewBackgroundColor = .white
//
//
//        //TODO: Also pass JSON of initial course info
//
//        self.navigationController?.pushViewController(nextViewController, animated: true)
//    }
//
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
