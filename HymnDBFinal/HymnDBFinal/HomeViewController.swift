//
//  HomeViewController.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/17/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import Material
import MaterialComponents

class HomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var browseResourcesButton: RaisedButton!
    @IBOutlet weak var quizButton: RaisedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // EDIT FONT TO WHAT HE WANTS
        titleLabel.text = "Welcome"
        titleLabel.font = RobotoFont.regular(with: 30.0)
        
        self.view.backgroundColor = THEME_COLOR
        
        prepareEmailField()
        preparePasswordField()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func prepareBrowseButton() {
        browseResourcesButton.title = "Browse Resources"
        browseResourcesButton.titleColor = .white
        browseResourcesButton.pulseColor = .white
        browseResourcesButton.pulseOpacity = 0.9
        browseResourcesButton.backgroundColor = UIColor(hex: "00AEEF")
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        //make API call to check login
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        ApiHelper.getResources("home/"){
            self.goToResourceList()

            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            return
        }
        
        browseResourcesButton.pulse()
    }
    
    func goToResourceList() {
        let nextViewController = AppStoryboard.ResourceList.initialViewController()!
        
        let backItem = UIBarButtonItem()
        backItem.title = "Home"
        navigationItem.backBarButtonItem = backItem
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */




