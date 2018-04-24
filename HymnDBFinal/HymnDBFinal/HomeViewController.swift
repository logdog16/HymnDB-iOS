//
//  HomeViewController.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/17/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//
import UIKit
import MaterialComponents

class HomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var browseResourcesButton: UIButton!
    @IBOutlet weak var quizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // EDIT FONT TO WHAT HE WANTS
        titleLabel.text = "CCS Resource Connector"
        browseResourcesButton.setTitle("Browse Resources", for: [])
        quizButton.setTitle("Help Me Find Resources", for: [])
        //titleLabel.font = RobotoFont.regular(with: 30.0)
        
      //  self.view.backgroundColor = THEME_COLOR
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func resourcesButtonPressed(_ sender: Any) {
        //self.navigationController?.pushViewController(ResourceList, animated: true)
        let backItem = UIBarButtonItem()
        backItem.title = "Home"
        navigationItem.backBarButtonItem = backItem
//        let nextVc = navigationItem.ResourceList.instantiateViewController()
//
        let storyboard = UIStoryboard(name: "ResourceList", bundle: nil).instantiateInitialViewController()
       // let vc = AppStoryboard?.ResourceList.initialViewController()
        present(storyboard!, animated: true, completion: nil)
    }
        
    @IBAction func quizButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Questions", bundle: nil).instantiateInitialViewController()
        present(storyboard!, animated: true, completion: nil)
        let backItem = UIBarButtonItem()
        backItem.title = "Home"
        navigationItem.backBarButtonItem = backItem
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
