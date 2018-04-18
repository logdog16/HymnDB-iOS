//
//  ResoureListTableViewController.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/18/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import MaterialComponents

class ResourceListTableViewController: UITableViewController {
    
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var resourceLabel: UILabel!
    
    var resourceList:JSON = []
    var selectedRow = 0
    
    var addButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(ResourceListTableViewController.modalPopup(sender:)))
    
    let TABLEVIEW_BACKGROUND_COLOR = "FD7F12"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Browse Resources"
        
        
        // configure the Resource List
        resourceList = [
            //             "resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "1"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "2"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "3"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "4"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "5"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "6"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "7"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "8"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "9"],
            //            ["resourceName": "Books",
            //             "color": "eeeeee",
            //             "resourceId": "10"],
            
        ]
        self.refreshResources()
        
        self.tableView.backgroundColor = UIColor.init(hex: TABLEVIEW_BACKGROUND_COLOR)
        
        self.initializeRefreshControl()
    }
    
    func refreshResources() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        ApiHelper.getResources(){ responseObject, error in
            
            if responseObject != nil {
                self.resourceList = responseObject!
                self.reloadView()
            }
            
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            return
        }
    }
    
    func reloadView(){
        self.tableView.reloadData()
    }
    
    func initializeRefreshControl() {
        self.refreshControl = UIRefreshControl()
        self.refreshControl?.addTarget(self, action:
            #selector(ResourceListTableViewController.handleRefresh(_:)),
                                       for: UIControlEvents.valueChanged)
        
        self.tableView.addSubview(self.refreshControl!)
    }
    
    func handleRefresh(_ refreshControl: UIRefreshControl) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        ApiHelper.getResources(){ responseObject, error in
            
            if responseObject != nil {
                self.resourceList = responseObject!
                self.reloadView()
            }
            
            refreshControl.endRefreshing()
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            return
        }
    }
    
    func showModal() {
        let storyboard = UIStoryboard(name: "ModalViewResource", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalView") as UIViewController
        
        var dialogTransitionController: MDCDialogTransitionController
        
        dialogTransitionController = MDCDialogTransitionController()
        vc.modalPresentationStyle = .overCurrentContext
        vc.transitioningDelegate = dialogTransitionController
        
        present(vc, animated: true, completion:nil)
        
    }
    
    @IBAction func modalPopup(sender: UIBarButtonItem) {
        print("popup!")
        showModal()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resourceList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResourceListCell", for: indexPath) as! ResourceListTableViewCell
        
        // get the course from the courseList
        let resource = resourceList[indexPath.row]
        
        if let resourceName = resource["resourceName"].string {
            cell.resourceNameLabel.text = resourceName
        }
        
        let color = UIColor(hex: resource["color"].string!)
        cell.cardView.backgroundColor = color
        cell.assignedColor = color
        
        cell.backgroundColor = UIColor.init(hex: TABLEVIEW_BACKGROUND_COLOR)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
        goToResource(row: indexPath.row)
    }
    
    func goToResource(row:Int) {
        let nextViewController = AppStoryboard.ResourceInfo.initialViewController()! as! ResourceInfoTableViewController
        nextViewController.resourceId = self.resourceList[row]["resourceID"].stringValue
        nextViewController.tableViewBackgroundColor = UIColor(hex:self.resourceList[row]["color"].stringValue).lighterColor(percentage: 1.3, withSaturation: 0.5)
        //        nextViewController.tableViewBackgroundColor = .white
        
        
        //TODO: Also pass JSON of initial course info
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBAction func unwindToResourceList(sender:UIStoryboardSegue) {
        print("UnwindToResourceList")
        refreshResources()
    }
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
