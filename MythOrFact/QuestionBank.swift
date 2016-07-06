//
//  QuestionBank.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-06.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class QuestionBank: NSObject {
    
    var allQuestions: [Question] = []
    
    init(category: String){
        super.init()
        populateCategory(category)
    }

    
    
    func populateCategory(expression: String) -> (){
        let question1Cat1 = Question(text: "cheese is yellow", fact: true, category: "cat1", answer: "cheese is yellow")
        
        let question2Cat2 = Question(text: "poop is green", fact: false, category: "cat1", answer: "poop is actually brown")
        
        switch expression {
        case "cat1" :
            allQuestions.append(question1Cat1)
            allQuestions.append(question2Cat2)
        //return cat1
        case "cat2" : break
            //cat2.append(question1Cat1)
            //cat2.append(question2Cat2)
            //return cat2
            
        case "cat3" : break
        //return cat3
        default: break
            //return cat1
        }
    }

}


