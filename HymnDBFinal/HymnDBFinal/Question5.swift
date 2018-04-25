//
//  Question4.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation
var quizs5 = [Quiz]()
/*class clothing
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

class myClothing
{
    public init()
    {
        if(quizs5.count == 0)
        {
            
            quizs5.append(Quiz(title: "Vestements"))
            quizs5.append(Quiz(title: "Robes, with or without stoles"))
            quizs5.append(Quiz(title: "Business"))
            quizs5.append(Quiz(title: "Casual"))
            
        }
    }
    public func getMockData() -> [Quiz]
    {
        return quizs5
    }
    public func getCheckedData() -> [Quiz]
    {
        var myChecks = [Quiz]()
        for e in quizs5{
            if (e.done){
                myChecks.append(e)
            }
        }
        return myChecks
    }
}




