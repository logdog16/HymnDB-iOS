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
        browseResourcesButton.setTitle("Browse Resourcs", forState: UIControlState.Normal)
        quizButton.setTitle("Help Me Find Resources", forState: UIControlState.Normal)
        //titleLabel.font = RobotoFont.regular(with: 30.0)
        
      //  self.view.backgroundColor = THEME_COLOR
        
        prepareBrowseButton()
        prepareQuizButton()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func prepareBrowseButton() {
        func browseButtontitleColor(for state: normal) -> UIColor?
        
//        browseResourcesButton.title = "Browse Resources"
        browseResourcesButton.titleColor = .white
        //browseResourcesButton.backgroundColor = UIColor(hex: "00AEEF")
    }
    
    func prepareQuizButton() {
        quizButton.text = "Help Me Find Resources"
        quizButton.titleColor = .white
        //quizButton.backgroundColor = UIColor(hex: "00AEEF")
    }
    
    @IBAction func resourcesButtonPressed(_ sender: Any) {
        self.goToResourceList()
        browseResourcesButton.pulse()
    }
    
//    @IBAction func resourcesButtonPressed(_ sender: Any) {
//
//        //make API call to check login
//        UIApplication.shared.isNetworkActivityIndicatorVisible = true
//        ApiHelper.getQuiz("home/"){
//            self.goToQuiz()
//
//            UIApplication.shared.isNetworkActivityIndicatorVisible = false
//            return
//        }
//
//        browseResourcesButton.pulse()
//    }
    
    @IBAction func quizButtonPressed(_ sender: Any) {
        goToQuiz()
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
