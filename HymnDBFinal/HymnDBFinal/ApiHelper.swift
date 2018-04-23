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


class ApiHelper {
    
    static func getResourceImg(_ resourceImg: JSON) {
        
        Alamofire.request("https://s3-us-west-2.amazonaws.com/hymndbphotos/" + "\(resourceImg)", method: .get).responseImage { response in
            guard let image = response.result.value
                
                else {
                // Handle error
                return
            }
        }
    }

}
