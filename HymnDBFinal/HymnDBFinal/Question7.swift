//
//  Question4.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
var quizs7 = [Quiz]()
/*class size
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
class mySize
{
    public init()
    {
        if(quizs7.count == 0)
        {
            
            quizs7.append(Quiz(title: "5-Fold Pattern (Gathering, Word, Response, Table, Sending) - Roman Catholic Mass and similar structures"))
            quizs7.append(Quiz(title: "4-Fold Pattern (Gathering, Word, Response, Sending) - Communion monthly or quarterly"))
            quizs7.append(Quiz(title: "2-Fold Pattern (Praise & Teaching) - Most Praise and Worship services"))
        }
    }
    public func getMockData() -> [Quiz]
    {
        return quizs7
    }
    public func getCheckedData() -> [Quiz]
    {
        var myChecks = [Quiz]()
        for e in quizs7{
            if (e.done){
                myChecks.append(e)
            }
        }
        return myChecks
    }
}

