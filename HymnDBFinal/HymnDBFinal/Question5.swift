//
//  Question4.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
class Question5
{
    var title: String
    var done: Bool
    
    public init(title: String)
    {
        self.title = title
        self.done = false
    }
}

extension Question5
{
    public class func getMockData() -> [Question4]
    {
        return [
            Question4(title: "Vestements"),
            Question4(title: "Robes, with or without stoles"),
            Question4(title: "Business"),
            Question4(title: "Casual")
        ]
    }
}



