//
//  Quiz.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation

var quizs = [Quiz]()

class Quiz
{

    var title: String
    var done: Bool
    
    public init(title: String)
    {
        self.title = title
        self.done = false
    }
    public func status_switch(){
        self.done = !self.done
    }
}

class myQuiz
{
    public init()
    {
        if(quizs.count == 0)
        {
        
            quizs.append(Quiz(title: "A hymn written prior to 1970"))
            quizs.append(Quiz(title: "Newly composed hymn (within the last 10 years)"))
            quizs.append(Quiz(title: "A song written by our own artist/leader"))
            quizs.append(Quiz(title: "Praise and Worship Song (CCM)"))
            quizs.append(Quiz(title: "Psalm Setting"))
            quizs.append(Quiz(title: "Chant (Gregorian, Anglican, Pointed or Taize)"))
            quizs.append(Quiz(title: "Older hymn text set to a new contemporary tune (or re-tuned)"))
            quizs.append(Quiz(title: "Song from another country (or World Song)"))
            quizs.append(Quiz(title: "Secular Song"))
        }
    }
    public func getMockData() -> [Quiz]
            {
                return quizs
                }
}
