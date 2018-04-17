//
//  Question4.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
class Question4
{
    var title: String
    var done: Bool
    
    public init(title: String)
    {
        self.title = title
        self.done = false
    }
}

extension Question4
{
    public class func getMockData() -> [Question4]
    {
        return [
            Question4(title: "5-Fold Pattern (Gathering, Word, Response, Table, Sending) - Roman Catholic Mass and similar structures"),
            Question4(title: "4-Fold Pattern (Gathering, Word, Response, Sending) - Communion monthly or quarterly"),
            Question4(title: "2-Fold Pattern (Praise & Teaching) - Most Praise and Worship services"),
        ]
    }
}


