//
//  ResourceListViewController.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/25/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit
import MaterialComponents
import IBAnimatable
import IoniconsKit
import SwiftyJSON
import Alamofire
import AlamofireImage


class ResourceListViewController: UIViewController {

    var resourceList:JSON = []
    
    
    @IBOutlet weak var cardView: AnimatableView!
//    @IBOutlet weak var resourceImage: AnimatableImageView!
//    @IBOutlet weak var resourceLabel: AnimatableLabel!

    @IBOutlet weak var bookView: AnimatableImageView!
    @IBOutlet weak var hymnalsView: AnimatableImageView!
    @IBOutlet weak var thesesView: AnimatableImageView!
    @IBOutlet weak var articlesView: AnimatableImageView!
    @IBOutlet weak var blogsView: AnimatableImageView!
    @IBOutlet weak var forumView: AnimatableImageView!
    @IBOutlet weak var newsView: AnimatableImageView!
    @IBOutlet weak var audioView: AnimatableImageView!
    @IBOutlet weak var podcastsView: AnimatableImageView!
    @IBOutlet weak var videosView: AnimatableImageView!
    @IBOutlet weak var congregationsView: AnimatableImageView!
    @IBOutlet weak var organizationsView: AnimatableImageView!
    @IBOutlet weak var eventsView: AnimatableImageView!
    @IBOutlet weak var personsView: AnimatableImageView!
    
    @IBOutlet weak var selectButton: AnimatableButton!
    
    //Buttons over images
    @IBAction func booksButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func hymnalsButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func thesesButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func articlesButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func blogsButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func forumButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func newsletterButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func audioButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func podcastButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func videosButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    
    @IBAction func congregationsButton(_ sender: Any)
    {
        //Due to the fact we can't show congregations/orgs/events/people as we do every other resource, handle it for now
        //until we can fix it, add a handler for these resources, or delete the buttons
        let alert = UIAlertController(title: "Coming soon!", message: "Congregation information coming soon, please use the web version at this time.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func orginizationsButton(_ sender: Any)
    {
        //Due to the fact we can't show congregations/orgs/events/people as we do every other resource, handle it for now
        //until we can fix it, add a handler for these resources, or delete the buttons
        let alert = UIAlertController(title: "Coming soon!", message: "Orginization information coming soon, please use the web version at this time.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func eventsButton(_ sender: Any)
    {
        //Due to the fact we can't show congregations/orgs/events/people as we do every other resource, handle it for now
        //until we can fix it, add a handler for these resources, or delete the buttons
        let alert = UIAlertController(title: "Coming soon!", message: "Event information coming soon, please use the web version at this time.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func personsButton(_ sender: Any)
    {
        //Due to the fact we can't show congregations/orgs/events/people as we do every other resource, handle it for now
        //until we can fix it, add a handler for these resources, or delete the buttons
        let alert = UIAlertController(title: "Coming soon!", message: "People information coming soon, please use the web version at this time.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    var textLabel = ""
    

    
    
    func setResourceListPage(_ imgView: AnimatableImageView, _ imgID: Int) {
            if imgView.image == nil{

                    let image = UIImage(named: resourceList[imgID]["resourceImage"].string!)
                    imgView.image = image
                }

    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
     
        self.title = "Browse Resources"
        
        resourceList = [
            ["resourceTitle": "Books",
             "resourceImage": "books-education-school-literature-48126.jpg",
             "resourceId": "1"],
            ["resourceTitle": "Hymnals/Songbooks",
             "resourceImage": "open-book-library-education-read-159621.jpg",
             "resourceId": "2"],
            ["resourceTitle": "Thesis/Dissertations",
             "resourceImage": "pexels-photo-518543.jpg",
             "resourceId": "3"],
            ["resourceTitle": "Articles",
             "resourceImage": "pexels-photo-267569.jpg",
             "resourceId": "4"],
            ["resourceTitle": "Blogs",
             "resourceImage": "startup-photos.jpg",
             "resourceId": "5"],
            ["resourceTitle": "Forum",
             "resourceImage": "pexels-photo-261706.jpg",
             "resourceId": "6"],
            ["resourceTitle": "Newsletter/E-News",
             "resourceImage": "microphone-audio-computer-sound-recording-55800.jpg",
             "resourceId": "7"],
            ["resourceTitle": "Audio Tracks",
             "resourceImage": "microphone-audio-computer-sound-recording-55800.jpg",
             "resourceId": "8"],
            ["resourceTitle": "Podcasts",
             "resourceImage": "pexels-photo-635005.jpg",
             "resourceId": "9"],
            ["resourceTitle": "Videos/Visuals",
             "resourceImage": "pexels-photo-66134.jpg",
             "resourceId": "10"],
            ["resourceTitle": "Congregations",
             "resourceImage": "pexels-photo-133699.jpg",
             "resourceId": "11"],
            ["resourceTitle": "Organizations",
             "resourceImage": "pexels-photo-296883.jpg",
             "resourceId": "12"],
            ["resourceTitle": "Events",
             "resourceImage": "people-eiffel-tower-lights-night.jpg",
             "resourceId": "13"],
            ["resourceTitle": "Persons",
             "resourceImage": "pexels-photo-296881.jpg",
             "resourceId": "14"]
        ]
        setResourceListPage(bookView, 0)
        setResourceListPage(hymnalsView, 1)
        setResourceListPage(thesesView, 2)
        setResourceListPage(articlesView, 3)
        setResourceListPage(blogsView, 4)
        setResourceListPage(forumView, 5)
        setResourceListPage(newsView, 6)
        setResourceListPage(audioView, 7)
        setResourceListPage(podcastsView, 8)
        setResourceListPage(videosView, 9)
        setResourceListPage(congregationsView, 10)
        setResourceListPage(organizationsView, 11)
        setResourceListPage(eventsView, 12)
        setResourceListPage(personsView, 13)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? "") {
            
            
        case "showList":
            guard let listView = segue.destination as? DisplayResourceTableViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            
            //let selectedResource = self.resourceList[indexPath.row]
            listView.category = 0
            
        default: break
            
        }
    }

    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
