//
//  Quiz.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
class Quiz
{
    var title: String
    var done: Bool
    
    public init(title: String)
    {
        self.title = title
        self.done = false
    }
}

extension Quiz
{
    public class func getMockData() -> [Quiz]
    {
        return [
            Quiz(title: "A hymn written prior to 1970"),
            Quiz(title: "Newly composed hymn (within the last 10 years)"),
            Quiz(title: "A song written by our own artist/leader"),
            Quiz(title: "Praise and Worship Song (CCM)"),
            Quiz(title: "Psalm Setting"),
            Quiz(title: "Chant (Gregorian, Anglican, Pointed or Taize)"),
            Quiz(title: "Older hymn text set to a new contemporary tune (or re-tuned)"),
            Quiz(title: "Song from another country (or World Song)"),
            Quiz(title: "Secular Song")
        ]
    }
}
