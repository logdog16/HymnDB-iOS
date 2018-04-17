//
//  Question4.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
class Question6
{
    var title: String
    var done: Bool
    
    public init(title: String)
    {
        self.title = title
        self.done = false
    }
}

extension Question6
{
    public class func getMockData() -> [Question4]
    {
        return [
            Question4(title: "Asian - Chinese Language/Heritage"),
            Question4(title: "Asian - Indian"),
            Question4(title: "Asian - Southest Asian Non-Chinese"),
            Question4(title: "Asian - Korean"),
            Question4(title: "Asian - Japanese"),
            Question4(title: "Black - African-American"),
            Question4(title: "Black - Sub-Saharan African"),
            Question4(title: "Hispanic/Latino/Spanish - Central/South American"),
            Question4(title: "Hispanic/Latino/Spanish - Caribbean"),
            Question4(title: "Native American/Indigenous Peoples"),
            Question4(title: "Native American/Pacific Islander"),
            Question4(title: "North African/Middle Eastern"),
            Question4(title: "White"),
            Question4(title: "White - Non-English-speaking"),
            
            
        ]
    }
}



