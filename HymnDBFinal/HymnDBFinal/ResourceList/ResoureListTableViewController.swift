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
import Alamofire
import AlamofireImage

class ResourceListTableViewController: UITableViewController {
    var resourceList:JSON = []
    @IBOutlet weak var home: UIButton!
    
    var urls : NSArray = NSArray()
    var labelTitles : NSArray = ["Books", "Hymnals/Songbooks", "Thesis/Dissertation", "Articles", "Blogs",
                                 "Forum", "Newsletter/E-News", "Audio Tracks", "Podcast", "Video/Visuals",
                                 "Congregations", "Organizations", "Events", "Persons"]
    
    
    
    var selectedRow = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Browse Resources"
        resourceList = [
            ["resourceTitle": "Books",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/books-education-school-literature-48126.jpg",
             "resourceId": "1"],
            ["resourceTitle": "Hymnals/Songbooks",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/open-book-library-education-read-159621.jpg",
             "resourceId": "2"],
            ["resourceTitle": "Thesis/Dissertations",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-518543.jpg",
             "resourceId": "3"],
            ["resourceTitle": "Articles",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-267569.jpg",
             "resourceId": "4"],
            ["resourceTitle": "Blogs",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/startup-photos.jpg",
             "resourceId": "5"],
            ["resourceTitle": "Forum",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-261706.jpg",
             "resourceId": "6"],
            ["resourceTitle": "Newsletter/E-News",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/microphone-audio-computer-sound-recording-55800.jpg",
             "resourceId": "7"],
            ["resourceTitle": "Audio Tracks",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/microphone-audio-computer-sound-recording-55800.jpg",
             "resourceId": "8"],
            ["resourceTitle": "Podcasts",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-635005.jpg",
             "resourceId": "9"],
            ["resourceTitle": "Videos/Visuals",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-66134.jpg",
             "resourceId": "10"],
            ["resourceTitle": "Congregations",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-133699.jpg",
             "resourceId": "11"],
            ["resourceTitle": "Organizations",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-296883.jpg",
             "resourceId": "12"],
            ["resourceTitle": "Events",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/people-eiffel-tower-lights-night.jpg",
             "resourceId": "13"],
            ["resourceTitle": "Persons",
             "resourceImage": "https://s3-us-west-2.amazonaws.com/hymndbphotos/pexels-photo-296881.jpg",
             "resourceId": "14"]
        ]
        
        
//        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))

        // configure the Resource List

    }
    
//    func reloadView(){
//        self.tableView.reloadData()
//    }
    
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
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let resourceTitle = resourceList[indexPath.row]["resourceTitle"].string
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResourceListCell", for: indexPath) as! ResourceListTableViewCell
        //cell.resourceLabel?.text = resourceList[indexPath.row]["resourceTitle"].string
        cell.resourceButton.setTitle(resourceList[indexPath.row]["resourceTitle"].string, for: [])
        
        if cell.resourceButton.backgroundImage(for: []) == nil{
            
            Alamofire.request(resourceList[indexPath.row]["resourceImage"].string!, method: .get).responseImage { response in
                guard let image = response.result.value else {
                    // Handle error
                    return
                }
                //cell.backgroundView = UIImageView(image: image)
               // cell.resourceButton.imageView = UIImageView(image: image)
                cell.resourceButton.setBackgroundImage(image, for: [])
            }
        }
        print(indexPath.row)
        
        let label = UILabel(frame: CGRect(x:100, y:60, width:250, height:30))
//        label.text = resource[""]labelTitles[indexPath.row]
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 22)
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
//        cell.contentView.addSubview(label)
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
