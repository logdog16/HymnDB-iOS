//
//  Question2.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/27/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
//
//  Question2.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
class Question2
{
    var title: String
    var done: Bool
    
    public init(title: String)
    {
        self.title = title
        self.done = false
    }
}

extension Question2
{
    public class func getMockData() -> [Question2]
    {
        return [
            Question2(title: "Acapella"),
            Question2(title: "Organ"),
            Question2(title: "Piano"),
            Question2(title: "Guitar (not full band)"),
            Question2(title: "Band (guitar, bass, drums, etc..."),
            Question2(title: "Orchestra/Wind Ensemble"),
            Question2(title: "Handbells"),
            Question2(title: "Obligato Instrumentals (flute, clarinet, trumpet, etc..."),
        ]
    }
}
