//
//  Question4.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation

var quizs4 = [Quiz]()

/*class shape
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
 }*/

class myShape
{
    public init()
    {
        if(quizs4.count == 0)
        {
            
            quizs4.append(Quiz(title: "5-Fold Pattern (Gathering, Word, Response, Table, Sending) - Roman Catholic Mass and similar structures"))
            quizs4.append(Quiz(title: "4-Fold Pattern (Gathering, Word, Response, Sending) - Communion monthly or quarterly"))
            quizs4.append(Quiz(title: "2-Fold Pattern (Praise & Teaching) - Most Praise and Worship services"))
            
        }
    }
    public func getMockData() -> [Quiz]
    {
        return quizs4
    }
    public func getCheckedData() -> [Quiz]
    {
        var myChecks = [Quiz]()
        for e in quizs4{
            if (e.done){
                myChecks.append(e)
            }
        }
        return myChecks
    }
}


