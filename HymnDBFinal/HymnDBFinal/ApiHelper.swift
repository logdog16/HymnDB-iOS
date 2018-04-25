//
//  ApiHelper.swift
//  HymnDBFinal
//
//  Created by Emily Stephanian on 4/18/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import UIKit

import Foundation
import Alamofire
import AlamofireImage
import SwiftyJSON

let todoEndpoint: String = "http://ec2-34-209-251-224.us-west-2.compute.amazonaws.com:3000/"
//let firstTodoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
// let todosEndpoint: String = "https://jsonplaceholder.typicode.com/todos"

class ApiHelper {
    
    // currently using this in resourceList view controller -- need to move function to here so images load when app loads
    // (rather than images loading when page is loaded)
    // pulling resource image from the database
    static func getResourceImg(_ resourceImg: JSON) {
        Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/" + "\(resourceImg)", method: .get).responseImage { response in
            guard let image = response.result.value
                else {
                // Handle error
                return
            }
        }
    }
    
    // GET request
    /* source: https://grokswift.com/rest-with-alamofire-swiftyjson/ */
    static func getRequest(_ section: String, endpoint:String=todoEndpoint, completionHandler: @escaping (JSON?, Error?)-> ()) {
        
        // set timer in case request takes too long
        Alamofire.SessionManager.default.session.configuration.timeoutIntervalForRequest = 10
        Alamofire.request(todoEndpoint).responseJSON { response in
        
        // check for errors
        guard response.result.error == nil else {
            // got an error in getting the data, need to handle it
            print("error calling GET on /todos/1")
            print(response.result.error!)
            return
        }
        
        // make sure we got some JSON since that's what we expect
        guard let json = response.result.value as? [String: Any] else {
            print("didn't get todo object as JSON from API")
            print("Error: \(String(describing: response.result.error))")
            return
        }
        
        // get and print the title
        guard let todoTitle = json["title"] as? String else {
            print("Could not get todo title from JSON")
            return
        }
            print("The title is: " + todoTitle)
        }
    }
    
    // POST request
    /* source: https://grokswift.com/rest-with-alamofire-swiftyjson/ */
    static func postRequest(_ section: String, env:String=todoEndpoint, _ parameters: Parameters, completionHandler: @escaping (JSON?, Error?) -> ()) {
       
        let newTodo: [String: Any] = ["title": "My First Post", "completed": 0, "userId": 1]
        
        // set timer in case request takes too long
        Alamofire.SessionManager.default.session.configuration.timeoutIntervalForRequest = 10
        Alamofire.request(todoEndpoint, method: .post, parameters: newTodo,
        encoding: JSONEncoding.default)
        .responseJSON { response in
            guard response.result.error == nil else {
                // got an error in getting the data, need to handle it
                print("error calling POST on /todos/1")
                print(response.result.error!)
                return
            }
            // make sure we got some JSON since that's what we expect
            guard let json = response.result.value as? [String: Any] else {
                print("didn't get todo object as JSON from API")
                print("Error: \(String(describing: response.result.error))")
                return
            }
            // get and print the title
            guard let todoTitle = json["title"] as? String else {
                print("Could not get todo title from JSON")
                return
            }
            print("The title is: " + todoTitle)
        }
    }
    
    // PUT request
    static func putRequest(_ section: String, env:String=todoEndpoint, _ parameters: Parameters, completionHandler: @escaping (JSON?, Error?) -> ()) {
        
        let parameters: [String: AnyObject] = [:] // fill in your params
        
        // set timer in case request takes too long
        Alamofire.SessionManager.default.session.configuration.timeoutIntervalForRequest = 10
        Alamofire.request(todoEndpoint, method: .put, parameters: parameters, encoding: JSONEncoding.default)
        .responseJSON { response in
            switch response.result {
            case .success(let value):
                // print("VALUE FOR \(section)",value)
                print(value)
                completionHandler(JSON(value), nil)
            case .failure(let error):
                print("ERROR FOR \(section)",error)
                completionHandler(nil, error)
                
            print(request)
            print(response)
            }
        }
    }
    
    // DELETE request -- don't need for now
    static func deleteRequest(_ section: String, env:String=todoEndpoint, completionHandler: @escaping (JSON?, Error?) -> ()) {
        
        // set timer in case request takes too long
        Alamofire.SessionManager.default.session.configuration.timeoutIntervalForRequest = 10
        Alamofire.request(todoEndpoint, method: .delete)
        .responseJSON { response in
            guard response.result.error == nil else {
                // got an error in getting the data, need to handle it
                print("error calling DELETE on /todos/1")
                print(response.result.error!)
                return
            }
            print("DELETE ok")
        }
    }
    
    
//    static func getPDF(path:String, resourceID:String, recordID:String, completionHandler: @escaping (String?, Error?) -> ()) {
//        fileRequest("resource/?resource_id=\(resourceID)&record_id=\(recordID)", completionHandler: completionHandler)
//    }
//
//    static func getImage(path:String, id:String, type:String, completionHandler: @escaping (String?, Error?) -> ()) {
//        imgRequest("pictures/?id=\(id)&picture_type=\(type)", completionHandler: completionHandler)
//    }
}
