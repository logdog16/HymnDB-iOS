//
//  Question4.swift
//  HymnDBFinal
//
//  Created by Adrien Ibarra on 3/22/18.
//  Copyright © 2018 Adrien Ibarra. All rights reserved.
//

import Foundation

var quizs6 = [Quiz]()
/*class ethnicity
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
 */
class myEthnicities
{
    public init()
    {
        if(quizs6.count == 0)
        {
            
            quizs6.append(Quiz(title: "Asian - Chinese Language/Heritage"))
            quizs6.append(Quiz(title: "Asian - Indian"))
            quizs6.append(Quiz(title: "Asian - Southest Asian Non-Chinese"))
            quizs6.append(Quiz(title: "Asian - Korean"))
            quizs6.append(Quiz(title: "Asian - Japanese"))
            quizs6.append(Quiz(title: "Black - African-American"))
            quizs6.append(Quiz(title: "Black - Sub-Saharan African"))
            quizs6.append(Quiz(title: "Hispanic/Latino/Spanish - Central/South American"))
            quizs6.append(Quiz(title: "Hispanic/Latino/Spanish - Caribbean"))
            quizs6.append(Quiz(title: "Native American/Indigenous Peoples"))
            quizs6.append(Quiz(title: "Native American/Pacific Islander"))
            quizs6.append(Quiz(title: "North African/Middle Eastern"))
            quizs6.append(Quiz(title: "White"))
            quizs6.append(Quiz(title: "White - Non-English-speaking"))
        }
    }
    public func getMockData() -> [Quiz]
    {
        return quizs6
    }
    public func getCheckedData() -> [Quiz]
    {
        var myChecks = [Quiz]()
        for e in quizs6{
            if (e.done){
                myChecks.append(e)
            }
        }
        return myChecks
    }
}





