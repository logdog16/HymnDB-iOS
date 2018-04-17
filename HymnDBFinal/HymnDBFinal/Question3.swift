//
//  Question3.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
class Question3
{
    var title: String
    var done: Bool
    
    public init(title: String)
    {
        self.title = title
        self.done = false
    }
}

extension Question3
{
    public class func getMockData() -> [Question3]
    {
        return [
            Question3(title: "Choir"),
            Question3(title: "Cantor"),
            Question3(title: "Song-Enlivener"),
            Question3(title: "Lead Singer from Band (solo)"),
            Question3(title: "Lead Singer from Band with Other Vocalists"),
            
        ]
    }
}

